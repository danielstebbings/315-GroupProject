/* Convert 24bit RGB into greyscale using luminence
 * By Daniel Stebbings
 * 23/04/24
 * */
#pragma once
//includes

#include "morph_stream.h"

//defines
#define RED_WEIGHT 		0.229
#define GREEN_WEIGHT 	0.587
#define BLUE_WEIGHT 	0.114

#define RED_MASK        0b000000000000000011111111 //bottom 8 bits
#define GREEN_MASK  	0b000000001111111100000000 //
#define BLUE_MASK		0b111111110000000000000000

#define GREY_THRESHOLD  117

//functions
grey_pixel_t RGB_to_greyscale(RGB_pixel_t RGB);

BW_pixel_t greyscale_to_BW(grey_pixel_t grey);


