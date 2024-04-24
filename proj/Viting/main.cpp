//INCLUDES
#include <algorithm>
#include <array>
#include "ap_int.h"
#include <cmath>

//define constants
#define WINDOW_SIZE    3
#define WIDTH  		 160
#define HEIGHT 		 120
#define PIX_SIZE	   1


typedef ap_uint<PIX_SIZE> pixel;


void window(pixel p, //inputs
		pixel* w00, pixel* w01, pixel* w02, //window outputs
		pixel* w10, pixel* w11, pixel* w12,
		pixel* w20, pixel* w21, pixel* w22)
{
#pragma HLS INTERFACE ap_none    port=w00,w01,w02,w10,w11,w12,w20,w21,w22 //window out
#pragma HLS INTERFACE ap_none 	 port=p  register//pixel in
#pragma HLS INTERFACE ap_ctrl_hs port=return

#pragma HLS PIPELINE  II=1

	ap_uint<PIX_SIZE> line_buffer[WIDTH*WINDOW_SIZE];

	//initial line buffer
	BUF_INIT:for(int i = 0; i< WIDTH*WINDOW_SIZE; i++) {
#pragma HLS PIPELINE  II=1 //1 input/clock
		line_buffer[i] = p;
	}

	//iterate through image row by row
	ROW:for(int imrow= 0; imrow<HEIGHT;imrow++){
#pragma HLS unroll factor=1 //disable unrolling
		COL:for(int col = 0; col<=WIDTH;col++) {
#pragma HLS PIPELINE  II=1 //1 input/clock

			//*w00 = line_buffer[0*WIDTH + col];
			*w00 = 1;
			*w01 = 1;
			*w02 = 1;

			*w10 = 1;
			*w11 = 1;
			*w12 = 1;

			*w20 = 1;
			*w21 = 1;
			*w22 = 1;

		}

		//Finished line buffer, discard first line. Move remaining lines up, read in next line
		for(int i=WIDTH;i<3*WIDTH;i++) {
#pragma HLS unroll
			line_buffer[i-WIDTH] = line_buffer[i];
		};

		//Read in next line
		BUFF_UPDATE: for (int i=2*WIDTH; i<3*WIDTH; i++) {
			line_buffer[i] = p;
		}

	}
	//image finished
	
	return;
}

