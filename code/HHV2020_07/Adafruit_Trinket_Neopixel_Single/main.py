import board, time
import neopixel

# Define Neopixels
LED6_PIN = board.D1  # pin that the NeoPixel is connected to
# Most Neopixels have a color order of GRB or GRBW some use RGB
LED6_ORDER = neopixel.RGB  # pixel color channel order
# Create NeoPixel object
LED6 = neopixel.NeoPixel(
    LED6_PIN, 1, pixel_order=LED6_ORDER, auto_write=False
)

### MAIN LOOP ###
while True:
    LED6[0] = (255, 0, 0)
    LED6.show()
    time.sleep(0.5)
    LED6[0] = (0, 0, 0)
    LED6.show()
    time.sleep(0.5)
