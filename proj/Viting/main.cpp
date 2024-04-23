//INCLUDES
#include <algorithm>

//define constants
#define WINDOW_SIZE 3
#define WIDTH 162
#define HEIGHT 122

char line_buffer[WINDOW_SIZE][WIDTH];


void window(char p, //inputs
		char w00, char w01, char w02, //window outputs
		char w10, char w11, char w12,
		char w20, char w21, char w22)
{
#pragma HLS INTERFACE ap_none port=p,w00,w01,w02,w10,w11,w12,w20,w21,w22
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS PIPELINE  II=1 //1 input/clock

	//initial line buffer
	BUF_INIT:for(int i = 0; i<= WIDTH*WINDOW_SIZE; i++) {
		int row = i/WIDTH;
		int col = i%WIDTH;
		line_buffer[row][col] = p;
	}

	//iterate through image row by row
	ROW:for(int imrow= 0; imrow<=HEIGHT-WINDOW_SIZE;imrow++){
#pragma HLS unroll off=true //disable unrolling
		COL:for(int col = 0; col<=WIDTH-(WINDOW_SIZE-1);col++) {
#pragma HLS unroll
			w00 = line_buffer[0][col];
			w01 = line_buffer[0][col+1];
			w02 = line_buffer[0][col+2];

			w10 = line_buffer[1][col];
			w11 = line_buffer[1][col+1];
			w12 = line_buffer[1][col+2];

			w20 = line_buffer[2][col];
			w21 = line_buffer[2][col+1];
			w22 = line_buffer[2][col+2];
		}

		//Finished line buffer, discard first line. Move remaining lines up, read in next line
		std::copy(&line_buffer[1][0], &line_buffer[2][2],&line_buffer[0][0]); //start, end , destination

		//Read in next line
		BUFF_UPDATE: for (int i=0; i<=WIDTH; i++) {
			line_buffer[WINDOW_SIZE-1][i] = p;
		}

	}

	//image finished
	return;

}

