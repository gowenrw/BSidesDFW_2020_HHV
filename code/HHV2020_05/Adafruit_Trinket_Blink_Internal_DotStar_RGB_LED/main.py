import board, time
import adafruit_dotstar as dotstar
# Assign pins for Internal DotStar RGB LED
# DotStar Data Pin D7 is defined as board.APA102_SCK
# DotStar Clock Pin D8 is defined as board.APA102_MOSI
# DotStar parameters (DATA, CLOCK, num_pixels, brightness)
dot = dotstar.DotStar(board.APA102_SCK, board.APA102_MOSI, 1, brightness=0.2)
### MAIN LOOP ###
while True:
    # Blink internal DotStar LED
    # DotStar value format (R,G,B) with each value range 0-255
    # Blink Red
    dot[0] = (255, 0, 0) # Red
    time.sleep(0.5)
    # Blink Green
    dot[0] = (0, 255, 0) # Green
    time.sleep(0.5)
    # Blink Blue
    dot[0] = (0, 0, 255) # Blue
    time.sleep(0.5)
    # Blink OFF
    dot[0] = (0, 0, 0) # OFF
    time.sleep(1)
