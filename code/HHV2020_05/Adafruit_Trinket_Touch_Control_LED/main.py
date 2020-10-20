import board, time
import digitalio
import touchio
# Assign pin D4 (External LED)
led5 = digitalio.DigitalInOut(board.D2)
# Assign Capacitive touch on A0 (Using Analog for raw_value)
touch = touchio.TouchIn(board.A0)
# Set IO Direction
led5.direction = digitalio.Direction.OUTPUT
# Main Loop
while True:
    # Read Touch Raw Value
    tval = touch.raw_value
    # Serial Output Touch Values
    print("Touch Value:", tval)
    if tval > 3500:
        print("Touched! LED ON")
        led5.value = True
    else:
        led5.value = False
    # Pause for 0.2 second
    time.sleep(0.2)
