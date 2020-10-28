import board, time
import neopixel

# Define Neopixels
LED6_PIN = board.D1  # pin that the NeoPixel is connected to
LED7_PIN = board.D0  # pin that the NeoPixel is connected to
# Most Neopixels have a color order of GRB or GRBW some use RGB
LED6_ORDER = neopixel.RGB  # pixel color channel order
LED7_ORDER = neopixel.GRB  # pixel color channel order
# Create NeoPixel object
LED6 = neopixel.NeoPixel(
    LED6_PIN, 1, pixel_order=LED6_ORDER, auto_write=False
)
LED7 = neopixel.NeoPixel(
    LED7_PIN, 3, pixel_order=LED7_ORDER, auto_write=False
)
# Turn down strip brightness to 30%
LED7.brightness = 0.3

### MAIN LOOP ###
while True:
    LED6[0] = (255, 0, 0)
    LED6.show()
    LED7[0] = (255, 0, 0)
    LED7[1] = (0, 255, 0)
    LED7[2] = (0, 0, 255)
    LED7.show()
    time.sleep(0.5)
    LED6[0] = (0, 0, 0)
    LED6.show()
    LED7[0] = (0, 0, 0)
    LED7[1] = (0, 0, 0)
    LED7[2] = (0, 0, 0)
    LED7.show()
    time.sleep(0.5)
