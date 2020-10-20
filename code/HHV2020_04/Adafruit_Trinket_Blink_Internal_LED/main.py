import board
import digitalio
import time
# Assign pin D13 (On-Board Red LED)
rled = digitalio.DigitalInOut(board.D13)
# Set pin IO Direction
rled.direction = digitalio.Direction.OUTPUT
# Main Loop
while True:
    # Serial Output
    print("Hello, CircuitPython!")
    # Set LED state to ON
    rled.value = True
    # Pause for 1 second
    time.sleep(1)
    # Set LED state to OFF
    rled.value = False
    # Pause for 1 second
    time.sleep(1)
