/* Convert 24bit RGB into greyscale using luminence
 * By Daniel Stebbings
 * 23/04/24
 * */

//includes
#include "RGB_to_greyscale.h"

//functions

grey_pixel_t RGB_to_greyscale(RGB_pixel_t RGB) {
	grey_pixel_t grey = (RGB&BLUE_MASK)*BLUE_WEIGHT + ((RGB&GREEN_MASK)>>8)*GREEN_WEIGHT + ((RGB&RED_MASK)>>16)*RED_WEIGHT;
	return grey;
}

BW_pixel_t greyscale_to_BW(grey_pixel_t grey) {
	return BW_pixel_t(grey > GREY_THRESHOLD);
}
