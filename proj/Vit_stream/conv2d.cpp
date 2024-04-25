/* 2d convolution
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "conv2d.h"

//functions

void window_stream(hls::stream<BW_pixel_t>	&in_bw,
				   hls::stream<window_struct> 	&out_window
				   ) {
	int im_row,im_col,buf_row; //full image row and column
	bool window_ready;
	line_buffer_t linebuf;
	window_struct tmp_window;
	IMG_IT:for (int i=0; i<IMG_WIDTH*IMG_HEIGHT;i++) {
		im_row = i/IMG_WIDTH;
		im_col = i%IMG_WIDTH;

		if(i<2*IMG_WIDTH) { //line buffer needs to fill up
			window_ready = false;
			buf_row = im_row%IMG_WIDTH;
			linebuf[buf_row][im_col] = in_bw.read();
		}

		else if(i<2*IMG_WIDTH+WINDOW_SIZE-1) {//we're at the minimum, fill first columns
			window_ready = false;
			MAKE_WINDOW_ROW:for(int win_row=0;win_row<WINDOW_SIZE;win_row++) {
				tmp_window.pix[win_row][im_col%WINDOW_SIZE] = linebuf[win_row][im_col];
			}
		}
		else if(i>=2*IMG_WIDTH+WINDOW_SIZE-1) { //time to start outputting windows
			//read in ith pixel

			linebuf[WINDOW_SIZE-1][im_col] = in_bw.read();



			//check if we're at the edge and have to jump buffer lines
			if (im_col == 0) { //first pixel of new line. Move buffer lines up to make space
				BUF_MV_ROW:for(int buf_row = 1; buf_row < WINDOW_SIZE; buf_row++) {
					BUF_MV_COL:for(int buf_col=0; buf_col < IMG_WIDTH; buf_col++) {
						linebuf[buf_row-1][buf_col] = linebuf[buf_row][buf_col];
					}
				}
			}
			if(im_col < WINDOW_SIZE -1) { //true when first pixel
				//starting pixels of image line. Need to wait to fill up
				window_ready = false;
				linebuf[WINDOW_SIZE-1][im_col] = in_bw.read(); //read in another pixel to last row of buffer

			}
			else {
				//we have enough pixels to work with
				//send in to window
				//current pixel is at bottom right of window.
				for(int win_row=0;win_row<WINDOW_SIZE;win_row++) {
					for(int win_col=0;win_col<WINDOW_SIZE;win_col++) {
						tmp_window.pix[WINDOW_SIZE-1-win_row][WINDOW_SIZE-1-win_col] = linebuf[win_row][im_col-win_col];
					}
				}
				//window has been populated
				tmp_window.TLAST = false;
				window_ready = true;
			}

			if (i==IMG_WIDTH*IMG_HEIGHT-1) {//last pixel
				tmp_window.TLAST = true;
			}

			//window ready to send
			if(window_ready) {
				out_window.write(tmp_window); //send current window out
			}




		}

	}
	return; //we're done

}

void conv2d_stream_BW(hls::stream<window_struct>	&in_window,
					  hls::stream<BW_pixel_t>  		&out_bw,
					  ap_uint<32>				    &coeffs,
					  ap_uint<32> 					&threshold) {
	ap_uint<8> tmp_threshold = threshold & 0xFF; //bottom bits
	ap_uint<8> running_total = 0;
	window_struct tmp_coeffs = coeffs; //convert to array
	window_struct current_window_struct;
	window_t window;
	BW_pixel_t tmp_pix;

	do {
		current_window_struct = in_window.read();
		//window = current_window_struct.pix;
		for(int row=0;row<WINDOW_SIZE;row++) {
				for (int col=0;col<WINDOW_SIZE;col++) {
					running_total += tmp_coeffs.pix[row][col] * current_window_struct.pix[row][col];
				}
			}
		if (running_total >= tmp_threshold) {
			tmp_pix = 1;
		}
		else {
			tmp_pix = 0;
		}

		out_bw.write(tmp_pix);

	} while(!current_window_struct.TLAST);

	//we're done
	return;


}
