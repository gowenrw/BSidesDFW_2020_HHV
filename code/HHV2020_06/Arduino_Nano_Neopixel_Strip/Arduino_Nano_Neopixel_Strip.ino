/* **************************
 *  Arduino Nano Neopixel Strip
 *
 *  Add a Neopixel strip and program it to flash R G B
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

  // set pixel color and show with delay
  LED6.setPixelColor(0, 255, 0, 0);
  LED6.show();
  LED7.setPixelColor(0, 255, 0, 0);
  LED7.setPixelColor(1, 0, 255, 0);
  LED7.setPixelColor(2, 0, 0, 255);
  LED7.show();
  delay(500);
  // set pixel color and show with delay
  LED6.setPixelColor(0, 0, 255, 0);
  LED6.show();
  LED7.setPixelColor(0, 0, 255, 0);
  LED7.setPixelColor(1, 0, 0, 255);
  LED7.setPixelColor(2, 255, 0, 0);
  LED7.show();
  delay(500);
  // set pixel color and show with delay
  LED6.setPixelColor(0, 0, 0, 255);
  LED6.show();
  LED7.setPixelColor(0, 0, 0, 255);
  LED7.setPixelColor(1, 255, 0, 0);
  LED7.setPixelColor(2, 0, 255, 0);
  LED7.show();
  delay(500);

}
