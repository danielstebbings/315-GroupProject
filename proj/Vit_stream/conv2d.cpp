/* 2d convolution
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "conv2d.h"

//functions
struct window_struct { //need to get around copying arrays
	window_t pix;
};
void window_stream(hls::stream<BW_pixel_t>	&in_bw,
				   hls::stream<window_struct> 	&out_window
				   ) {
	int im_row,im_col,buf_row; //full image row and column
	line_buffer_t linebuf;
	window_struct tmp_window;
	IMG_IT:for (int i=0; i<IMG_WIDTH*IMG_HEIGHT;i++) {
		im_row = i/IMG_WIDTH;
		im_col = i%IMG_WIDTH;


		if(i<2*IMG_WIDTH) { //line buffer needs to fill up
			buf_row = im_row%IMG_WIDTH;
			linebuf[buf_row][im_col] = in_bw.read();
		}
		else if(i<2*IMG_WIDTH+WINDOW_SIZE-1) {//we're at the minimum, fill first columns
			MAKE_WINDOW_ROW:for(int win_row=0;win_row<WINDOW_SIZE;win_row++) {
				tmp_window.pix[win_row][im_col%WINDOW_SIZE] = linebuf[win_row][im_col];
			}
		}
		else if(i>=2*IMG_WIDTH+WINDOW_SIZE-1 and i<IMG_WIDTH*IMG_HEIGHT) { //time to start outputting windows
			out_window.write(tmp_window); //send current window out

			//check if we're at the edge and have to jump buffer lines
			//shift over the window
			for(int win_row=0;win_row<WINDOW_SIZE;win_row++) {
				for(int win_col=0;win_col<WINDOW_SIZE;win_col++) {

				}
			}


		}

	}

}

void conv2d_stream_BW(hls::stream<window_t>	&in_window,
					  hls::stream<BW_pixel_t>  &out_bw) {

}
