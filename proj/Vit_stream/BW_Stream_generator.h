/* Generate a binary pixel stream from 32bit encoded, 24bit RGB pixels
 * By Daniel Stebbings
 * 23/04/24
 * */
#pragma once

//includes
#include "RGB_to_greyscale.h"

#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "morph_stream_utils.h"
#include "ap_int.h"



//defines

//functions
void RGB_to_binary_stream( hls::stream<ap_uint<32>> &in_32b,
						   hls::stream<BW_pixel_struct>	&out_bw
						   );

