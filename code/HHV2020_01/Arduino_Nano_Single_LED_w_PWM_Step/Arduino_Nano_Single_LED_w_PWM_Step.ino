/* **************************
 *  Arduino Nano Single LED with PWM Step
 *
 *  Control an LED connected to a Digital PWM (Pulse Width Modulation) Pin
 *  Use analogWrite to set LED values between 0 (LOW) and 255 (HIGH)
 *  Step through a list of predefined values
 *
 *  Digital Pins without PWM use digitalWrite with values of 0 (LOW) or 1 (HIGH)
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED1 3

// Define Variables
int step = 0;

void setup()
{
  // Initialize LED Pins As Output
  pinMode(LED1, OUTPUT);

  // Set up serial output to console (baud)
  Serial.begin(38400);
}

// Main Loop
void loop()
{
  // Set Delay Time [in ms]
  int DelayTime = 100;

  // Step Value Array
  int StepValue[10] = {0, 50, 100, 150, 200, 255, 200, 150, 100, 50};

  // Set the LED value using analogWrite using the step and StepValue variables
  // analogWrite is only usable on Analog pins or Digital PWM pins
  analogWrite(LED1, StepValue[step]);

  // Print current LED value to serial console for troubleshooting
  Serial.print(" LED_VALUE=");
  Serial.println(StepValue[step]);

  // Increment the Step Counter
  step = step + 1;
  if (step > 9) {
    // Reset step counter if it exceeds the num of StepValue array elements
    step = 0;
  }

  // Pause the loop keeping the LED lit with current values before resuming
  delay(DelayTime);

}
