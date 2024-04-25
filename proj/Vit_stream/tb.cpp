//testbench for morph_stream

//includes
//custom
#include "tb.h"

//HLS
#include "morph_stream.h"
#include "ap_int.h"
//#include "hls_stream.h"
//std
#include <iostream>
#include <fstream>
#include <string>


//defines
#undef  IMG_WIDTH
#define IMG_WIDTH  3
#undef 	IMG_HEIGHT
#define IMG_HEIGHT 3



//types
//misc functions


//test bench main
int main() {
	//initial return
	int ret=0; //success

	//test data
	ap_uint<32> white = 0x00FFFFFF;
	ap_uint<32> input_dat_9[9] = {white, white, white, white,
								  white, white, white, white,
								  white};

	//DUT signals
	stream_32 in_stream;
	stream_32 out_stream;
	ap_uint<32>						 conv_coeffs	 = 0;
	ap_uint<32>				    	 conv_threshold	 = 0;




	//test vars
	axi_data_32 test_pkt;
	//test loop
	for (int packet = 0; packet< IMG_WIDTH*IMG_HEIGHT;packet++) {
		//craft packet
		test_pkt.data = input_dat_9[packet];
		if (packet != IMG_WIDTH*IMG_HEIGHT-1) {
			test_pkt.last = false;
		}
		else {
			test_pkt.last = true;
		}

		//send to DUT
		in_stream.write(test_pkt);

	}

	//instantiate DUT
		ms( in_stream,
					  out_stream,
					  0,
					  0);

	axi_data_32 result_pkt;
	for (int packet = 0; packet< IMG_WIDTH*IMG_HEIGHT;packet++) {
		if(out_stream.empty()) {
			std::cout << "EMPTY";
		}
		else {
			result_pkt = out_stream.read();
			std::cout << "p:" << packet << "|";
			std::cout << "d:" << result_pkt.data << "|";
			std::cout << "l:" << result_pkt.last << std::endl;

			if (result_pkt.last) {
				break;
			};
		};
	}

	int leftover = 0;
	if (!out_stream.empty()) {
		while(!out_stream.empty()) {

			leftover++;
			out_stream.read();
		}
		std::cout << "LEFTOVER PACKETS: " << leftover << std::endl;
	}


	return ret;
}
