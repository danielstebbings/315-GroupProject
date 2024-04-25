//testbench for morph_stream

//includes
#include "tb.h"


//defines

//types

//misc functions
int main() {
	//initial return
	int ret=0; //success


	//test
	hls::stream< ap_axis<32,2,5,6> > in_stream;
	hls::stream< ap_axis<32,2,5,6> > out_stream;
	ap_uint<32>						 conv_coeffs;
	ap_uint<32>				    	 conv_threshold;
	//DUT
	morph_stream(in_stream,
				  out_stream,
				  conv_coeffs,
				  conv_threshold);

}
