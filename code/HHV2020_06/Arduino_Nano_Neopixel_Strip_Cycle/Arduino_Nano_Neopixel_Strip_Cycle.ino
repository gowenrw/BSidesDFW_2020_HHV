/* **************************
 *  Arduino Nano Neopixel Strip Cycle
 *
 *  Color Cycle our Neopixels
 *
 *  Written by @alt_bier
 * ************************** */

/* Include the Adafruit NeoPixel library */
#include <Adafruit_NeoPixel.h>

/* DEFINE APA106 NEOPIXEL */
#define LED6_PIN A1
#define LED6_NUM 1

/* DEFINE WS2812B NEOPIXEL STRIP */
#define LED7_PIN 10
#define LED7_NUM 3

// Parameter 1 = number of pixels in strip
// Parameter 2 = pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
Adafruit_NeoPixel LED6 = Adafruit_NeoPixel(LED6_NUM, LED6_PIN, NEO_RGB + NEO_KHZ800);
Adafruit_NeoPixel LED7 = Adafruit_NeoPixel(LED7_NUM, LED7_PIN, NEO_GRB + NEO_KHZ800);

// Setup runs once when you press reset or power the board
void setup() {
  // start the single neopixel and blank it out
  LED6.begin();
  LED6.show();
  // start the neopixel strip and blank it out
  LED7.begin();
  LED7.show();
}

// the loop function runs over and over again forever
void loop() {

  // loop 0-255 to set pixel colors
  for(int i=0; i<256; i++) {
    int pos = i;
    if (pos < 85) {
      // Cycle Red & Green based on itiration number
      LED6.setPixelColor(0, int(pos * 3), int(255 - (pos*3)), 0);
      LED7.setPixelColor(0, int(pos * 3), int(255 - (pos*3)), 0);
      LED7.setPixelColor(1, int(pos * 3), int(255 - (pos*3)), 0);
      LED7.setPixelColor(2, int(pos * 3), int(255 - (pos*3)), 0);
    } else if (pos < 170) {
      pos = pos - 85;
      // Cycle Red & Blue based on itiration number
      LED6.setPixelColor(0, int(255 - pos*3), 0, int(pos*3));
      LED7.setPixelColor(0, int(255 - pos*3), 0, int(pos*3));
      LED7.setPixelColor(1, int(255 - pos*3), 0, int(pos*3));
      LED7.setPixelColor(2, int(255 - pos*3), 0, int(pos*3));
    } else {
      pos = pos -170;
      // Cycle Green & Blue based on itiration number
      LED6.setPixelColor(0, 0, int(pos*3), int(255 - pos*3));
      LED7.setPixelColor(0, 0, int(pos*3), int(255 - pos*3));
      LED7.setPixelColor(1, 0, int(pos*3), int(255 - pos*3));
      LED7.setPixelColor(2, 0, int(pos*3), int(255 - pos*3));
    }
    LED6.show();
    LED7.show();
    delay(50);
  }

}
