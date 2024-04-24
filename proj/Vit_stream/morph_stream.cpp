/* Rewrite of morphological operations using Vitis C++
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "morph_stream.h"



//TOP LEVEL ---------------------
//handle incoming pixel stream
void morph_stream ( hls::stream< ap_axis<32,2,5,6> > &in_stream,
					hls::stream< ap_axis<32,2,5,6> > &out_stream
					) {
#pragma HLS DATAFLOW
#pragma HLS INTERFACE axis port=in_stream 	bundle=INPUT
#pragma HLS INTERFACE axis port=out_stream	bundle=OUTPUT

	//internal streams

	hls::stream<BW_pixel_t,2> BW_stream; //internal pixel stream, depth 2
	hls::stream<window_t,2>   window_stream; //internal pixel window stream, depth 2






}

//-------------------------------
