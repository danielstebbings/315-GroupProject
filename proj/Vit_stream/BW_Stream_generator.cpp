/* Generate a binary pixel stream from 32bit encoded, 24bit RGB pixels
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "BW_Stream_generator.h"


void RGB_to_binary_stream( hls::stream<ap_uint<32>> &in_32b,
						   hls::stream<BW_pixel_struct>	&out_bw
						   ) {
	BW_pixel_struct temp_BW_pkt;
	BW_LOOP:for(int pixel=0;pixel<IMG_WIDTH*IMG_HEIGHT;pixel++) {
#pragma HLS unroll factor=1
			//converting input
			ap_int<32> in_32b_tmp;
			in_32b_tmp = in_32b.read();
			RGB_pixel_t  in_RGB   = in_32b_tmp&0x00FFFFFF; //bottom 24bits
			grey_pixel_t in_grey  = RGB_to_greyscale(in_RGB);
			BW_pixel_t   in_BW	  = greyscale_to_BW(in_grey);
			temp_BW_pkt.pix = in_BW;
			if (pixel == IMG_WIDTH*IMG_HEIGHT-1) {
				temp_BW_pkt.last = true;
			}
			else {
				temp_BW_pkt.last = false;
			}

			out_bw.write(temp_BW_pkt);
		}
	return; //we're done
}
