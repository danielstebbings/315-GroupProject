/* Rewrite of morphological operations using Vitis C++
 * By Daniel Stebbings
 * 23/04/24
 * */
#pragma once

//includes
#include "morph_stream_utils.h"

#include "BW_Stream_generator.h"
#include "conv2d.h"

#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"


//functions

//TOP LEVEL ---------------------
//handle incoming pixel stream
void ms( stream_32 			 &in_stream,
		 stream_32 			 &out_stream,
		 ap_uint<32>		 *conv_coeffs,
		 ap_uint<32>		 *conv_threshold);

//-------------------------------
