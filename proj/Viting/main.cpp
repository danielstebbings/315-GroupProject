//INCLUDES
#include <algorithm>
#include <array>
#include "ap_int.h"

//define constants
#define WINDOW_SIZE    3
#define WIDTH  		 160
#define HEIGHT 		 120

typedef std::array<ap_uint<1>,WIDTH*WINDOW_SIZE> buffer;




void window(ap_uint<1> p, //inputs
		char* w00, char* w01, char* w02, //window outputs
		char* w10, char* w11, char* w12,
		char* w20, char* w21, char* w22)
{
#pragma HLS INTERFACE ap_hs      port=w00,w01,w02,w10,w11,w12,w20,w21,w22 //window out
#pragma HLS INTERFACE ap_hs 	 port=p //pixel in
#pragma HLS INTERFACE ap_ctrl_hs port=return

	buffer line_buffer;

	//initial line buffer
	BUF_INIT:for(int i = 0; i<= WIDTH*WINDOW_SIZE; i++) {
#pragma HLS PIPELINE  II=1 //1 input/clock
		line_buffer[i] = char(p);
	}

	//iterate through image row by row
	ROW:for(int imrow= WINDOW_SIZE-1; imrow<=HEIGHT;imrow++){
#pragma HLS unroll factor=1 //disable unrolling
		COL:for(int col = WINDOW_SIZE-1; col<=WIDTH;col++) {
#pragma HLS PIPELINE  II=1 //1 input/clock

			*w00 = line_buffer[0*WIDTH + col];
			*w01 = line_buffer[0*WIDTH + col+1];
			*w02 = line_buffer[0*WIDTH + col+2];

			*w10 = line_buffer[0*WIDTH + col];
			*w11 = line_buffer[0*WIDTH + col+1];
			*w12 = line_buffer[0*WIDTH + col+2];

			*w20 = line_buffer[2][col-2];
			*w21 = line_buffer[2][col-1];
			*w22 = line_buffer[2][col];

		}
		buffer temp_buffer;
		//Finished line buffer, discard first line. Move remaining lines up, read in next line
		std::copy(line_buffer.begin()+WIDTH, line_buffer.end(),temp_buffer.begin()); //start, end , destination

		//temp_buffer[0] = line_buffer[1];
		//temp_buffer[1] = line_buffer[2];


		//Read in next line
		BUFF_UPDATE: for (int i=0; i<WIDTH; i++) {
			temp_buffer[2][i] = p;
		}

		line_buffer = temp_buffer;
	}
	//image finished
	return;
}

