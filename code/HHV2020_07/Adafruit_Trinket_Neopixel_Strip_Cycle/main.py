import board, time
import neopixel

# Define Neopixels
LED7_PIN = board.D0  # pin that the NeoPixel is connected to
# Most Neopixels have a color order of GRB or GRBW some use RGB
LED7_ORDER = neopixel.GRB  # pixel color channel order
# Create NeoPixel object
LED6 = neopixel.NeoPixel(board.D1, 1, pixel_order=neopixel.RGB)
LED7 = neopixel.NeoPixel(LED7_PIN, 3, pixel_order=LED7_ORDER)
# Turn down brightness to 30%
LED7.brightness = 0.3
# Function to color cycle NeoPixels
def wheel(pos):
    if (pos < 0) or (pos > 255):
        return (0, 0, 0)
    if (pos < 85):
        return (int(pos * 3), int(255 - (pos*3)), 0)
    elif (pos < 170):
        pos -= 85
        return (int(255 - pos*3), 0, int(pos*3))
    else:
        pos -= 170
        return (0, int(pos*3), int(255 - pos*3))
# Iteration Var
i = 0

### MAIN LOOP ###
while True:
    LED6[0] = (0, 0, 0) # turn off 8mm to focus on strip
    LED7[0] = wheel(i & 255)
    LED7[1] = wheel(i & 255)
    LED7[2] = wheel(i & 255)
    time.sleep(0.05)
    i = (i+1) % 256  # run from 0 to 255
