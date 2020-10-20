import board
import digitalio
import time
# Assign pin D13 (On-Board Red LED)
rled = digitalio.DigitalInOut(board.D13)
# Assign pin D4 (External LED)
led4 = digitalio.DigitalInOut(board.D4)
# Assign pin D3 (External Switch Input)
sw1 = digitalio.DigitalInOut(board.D3)
# Set IO Direction
rled.direction = digitalio.Direction.OUTPUT
led4.direction = digitalio.Direction.OUTPUT
sw1.direction = digitalio.Direction.INPUT
# Main Loop
while True:
    # Read Button Value
    Button = sw1.value
    # Serial Output Button Value
    print("Button Value:", Button)
    # Turn rled ON/OFF based on conditional Button Value
    if (Button == True):
        # Set LED state to ON
        rled.value = True
    else:
        # Set LED state to OFF
        rled.value = False
    # Set led4 to Button Value
    led4.value = Button
    # Pause for 0.2 second
    time.sleep(0.2)
