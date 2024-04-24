/* Generate a binary pixel stream from 32bit encoded, 24bit RGB pixels
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "BW_Stream_generator.h"


void RGB_to_binary_stream( hls::stream< ap_axis<32,2,5,6> > &in_32b,
						   hls::stream<BW_pixel_t>          &out_bw
						   ) {
	for(int pixel=0;pixel<IMG_WIDTH*IMG_HEIGHT;pixel++) {
			//converting input
		    ap_axis<32,2,5,6> in_32b_tmp;
			in_32b.read(in_32b_tmp);
			ap_uint<32>  in_pix_32b = in_32b_tmp.data;
			RGB_pixel_t  in_RGB   = in_pix_32b&0x00FFFFFF; //bottom 24bits
			grey_pixel_t in_grey  = RGB_to_greyscale(in_RGB);
			BW_pixel_t   in_BW	  = greyscale_to_BW(in_grey);
			out_bw.write(in_BW);
		}
}
