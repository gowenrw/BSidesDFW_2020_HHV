import board
import digitalio
import time
# Assign pin D13 (On-Board Red LED)
rled = digitalio.DigitalInOut(board.D13)
# Assign pin D4 (External LED)
led4 = digitalio.DigitalInOut(board.D4)
# Set pin IO Direction
rled.direction = digitalio.Direction.OUTPUT
led4.direction = digitalio.Direction.OUTPUT
# Main Loop
while True:
    # Set LED state to ON
    rled.value = led4.value = True
    # Serial Output LED values
    print("rled Value: ", rled.value, "led4 Value: ", led4.value)
    # Pause for 1 second
    time.sleep(1)
    # Set LED state to OFF
    rled.value = led4.value = False
    # Serial Output LED values
    print("rled Value: ", rled.value, "led4 Value: ", led4.value)
    # Pause for 1 second
    time.sleep(1)
