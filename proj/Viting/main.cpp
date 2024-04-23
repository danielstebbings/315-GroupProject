#define WINDOW_SIZE 3
#define WIDTH 162
#define HEIGHT 122

bool line_buffer[WINDOW_SIZE][WIDTH];

void window(char p, //inputs
		char w00, char w01, char w02, //window outputs
		char w10, char w11, char w12,
		char w20, char w21, char w22)
{
#pragma interface
#pragma HLS PIPELINE  II=1

	//initial line buffer
	for(int p = 0; p<= width*WINDOW_SIZE; p++) {
		int row = p/WIDTH;
		int col = p%WIDTH;
		line_buffer[row][col] = p;
	}

	//iterate through image row by row
	for(int imrow= 0; imrow<=HEIGHT-WINDOW_SIZE;imrow++){
		for(int col = 0; col<=width-(WINDOW_SIZE-1);col++) {
			w00 = line_buffer[0][col];
			w01 = line_buffer[0][col+1];
			w02 = line_buffer[0][col+2];

			w10 = line_buffer[0][col];
			w11 = line_buffer[0][col+1];
			w12 = line_buffer[0][col+2];

			w20 = line_buffer[0][col];
			w21 = line_buffer[0][col+1];
			w22 = line_buffer[0][col+2];
		}

		//Finished line buffer, discard first line. Move remaining lines up, read in next line
		std::copy(&line_buffer[1][0], &line_buffer);



	}

}

