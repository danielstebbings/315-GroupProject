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

//functions

void window_stream(hls::stream<BW_pixel_t>	&in_bw,
				   hls::stream<window_t> 	&out_window
				   );

void conv2d_stream_BW(hls::stream<window_t>	&in_window,
					  hls::stream<BW_pixel_t>  &out_bw);
