/* Rewrite of morphological operations using Vitis C++
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "morph_stream.h"



//TOP LEVEL ---------------------
//handle incoming pixel stream
void ms( stream_32 			 &in_stream,
		 stream_32 			 &out_stream,
		 ap_uint<32>		 *conv_coeffs,
		 ap_uint<32>		 *conv_threshold) {
#pragma HLS DATAFLOW //work in parallel
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=conv_coeffs
#pragma HLS INTERFACE s_axilite port=conv_threshold
#pragma HLS stable variable=conv_coeffs
#pragma HLS stable variable=conv_threshold

	//internal streams

	hls::stream<BW_pixel_struct> in_BW_stream_var; //internal pixel stream
	hls::stream<BW_pixel_struct> out_BW_stream_var; //internal pixel stream
	hls::stream<window_struct>   window_stream_var; //internal pixel window stream, depth 2

	axi_data_32 temp_in_packet;
	axi_data_32 temp_out_packet;
	ap_uint<32> temp_in_raw_data;
	hls::stream<ap_uint<32>> in_raw_stream;
	BW_pixel_struct temp_out_BW_pkt;
	BW_pixel_t temp_out_BW;


	//deal with output stream
	do {
#pragma HLS pipeline
		in_stream.read(temp_in_packet);
		in_raw_stream.write(ap_uint<32>(temp_in_packet.data.to_uint()));
	} while (!temp_in_packet.last);

	RGB_to_binary_stream(in_raw_stream, in_BW_stream_var); //take in in_stream, convert to binary, output on BW_stream
	//window_stream(BW_stream_var,window_stream_var);

	//conv2d_stream_BW(window_stream_var, //windows in
		//			 out_BW_stream_var, //BW pixels out
			//		 conv_coeffs,
				//	 conv_threshold
					// );

	//deal with output stream
	do {
#pragma HLS pipeline II=1
		temp_out_BW_pkt = in_BW_stream_var.read();
		temp_out_BW = temp_out_BW_pkt.pix;

		temp_out_packet.last = temp_out_BW_pkt.last;
		temp_out_packet.data = ap_int<32>(temp_out_BW);

		out_stream.write(temp_out_packet);

	} while(!temp_out_BW_pkt.last);
}

//-------------------------------
