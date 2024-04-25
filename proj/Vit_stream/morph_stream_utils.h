/* type and constant definitions
 * By Daniel Stebbings
 * 23/04/24
 * */
#pragma once
//includes
#include "ap_int.h"

//defines
#define WINDOW_SIZE   3
#define IMG_WIDTH	120
#define IMG_HEIGHT	120
#define PIXEL_SIZE	 24

//Type definitions
typedef ap_uint<24> RGB_pixel_t;
typedef ap_uint<8>  grey_pixel_t;
typedef ap_uint<1>  BW_pixel_t;

struct BW_pixel_struct {
	BW_pixel_t pix;
	bool	   last;
};

typedef BW_pixel_t line_buffer_t[WINDOW_SIZE][IMG_WIDTH];
typedef BW_pixel_t window_t[WINDOW_SIZE][WINDOW_SIZE];
