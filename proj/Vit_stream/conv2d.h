/* 2d convolution
 * By Daniel Stebbings
 * 23/04/24
 * */

#pragma once

//includes
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "morph_stream_utils.h"

//defines

//types
struct window_struct { //need to get around copying arrays
	window_t pix;
	bool TLAST = false;

	window_struct() = default;

	window_struct(ap_uint<32> num) { //assume WINDOW_SIZE < 5
		int window_row = 0;
		int window_col = 0;
		int current_bit = 0;
		for (int bit=0; bit<WINDOW_SIZE*WINDOW_SIZE; bit++) {
			window_row = bit/WINDOW_SIZE;
			window_col = bit%WINDOW_SIZE;
			current_bit = 1<<bit; //shift mask by bit
			pix[window_row][window_col] = ap_uint<1>((current_bit&num)>>bit);
		}
	}
};

//functions

void window_stream(hls::stream<BW_pixel_t>	&in_bw,
				   hls::stream<window_struct> 	&out_window
				   );

void conv2d_stream_BW(hls::stream<window_struct>	&in_window,
					  hls::stream<BW_pixel_t>  		&out_bw,
					  ap_uint<32>				    &coeffs,
					  ap_uint<32> 					&threshold);
