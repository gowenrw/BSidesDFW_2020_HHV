import board
import pulseio
import time
# Assign pin D4 (External LED)
led4 = pulseio.PWMOut(board.D4)
# Note: PWMOut.duty_cycle is a 16 bit value between 0 and 65535
# Main Loop
while True:
    # Fade LED from 0% to 100% - OFF to ON
    for i in range(100):
        # Set LED Value
        led4.duty_cycle = int(i / 100 * 65535)
        # Serial Output LED value
        print("led4 Value: ", led4.duty_cycle)
        # Pause for 0.01 second
        time.sleep(0.01)
    # Fade LED from 100% to 0% - ON to OFF
    for i in range(100, -1, -1):
        # Set LED Value
        led4.duty_cycle = int(i / 100 * 65535)
        # Serial Output LED value
        print("led4 Value: ", led4.duty_cycle)
        # Pause for 0.01 second
        time.sleep(0.01)