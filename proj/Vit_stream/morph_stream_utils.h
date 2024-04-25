/* type and constant definitions
 * By Daniel Stebbings
 * 23/04/24
 * */
#pragma once
//includes
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"


//defines
#ifndef WINDOW_SIZE
#define WINDOW_SIZE   3
#endif
#ifndef IMG_WIDTH
#define IMG_WIDTH	120
#endif
#ifndef IMG_HEIGHT
#define IMG_HEIGHT	120
#endif
#ifndef PIXEL_SIZE
#define PIXEL_SIZE	 24
#endif

//Type definitions
typedef hls::axis<ap_uint<32>,2,5,6> axi_data_32;
typedef hls::stream<axi_data_32> stream_32;

typedef ap_uint<24> RGB_pixel_t;
typedef ap_uint<8>  grey_pixel_t;
typedef ap_uint<1>  BW_pixel_t;

struct BW_pixel_struct {
	BW_pixel_t pix;
	bool	   last;
};

typedef BW_pixel_t line_buffer_t[WINDOW_SIZE][IMG_WIDTH];
typedef BW_pixel_t window_t[WINDOW_SIZE][WINDOW_SIZE];
