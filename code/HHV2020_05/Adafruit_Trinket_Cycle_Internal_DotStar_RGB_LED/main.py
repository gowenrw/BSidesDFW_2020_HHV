import board, time
import adafruit_dotstar as dotstar
# Assign pins for Internal DotStar RGB LED
# DotStar Data Pin D7 is defined as board.APA102_SCK
# DotStar Clock Pin D8 is defined as board.APA102_MOSI
# DotStar parameters (DATA, CLOCK, num_pixels, brightness)
dot = dotstar.DotStar(board.APA102_SCK, board.APA102_MOSI, 1, brightness=0.2)
# Function to produce a nice color swirl
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
    # spin internal DotStar LED around!
    dot[0] = wheel(i & 255)
    i = (i+1) % 256  # run from 0 to 255
    time.sleep(0.05)
