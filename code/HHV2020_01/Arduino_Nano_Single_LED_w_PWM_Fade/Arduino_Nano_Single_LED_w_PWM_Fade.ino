/* **************************
 *  Arduino Nano Single LED with PWM Fade
 *
 *  Control an LED connected to a Digital PWM (Pulse Width Modulation) Pin
 *  Use analogWrite to set LED values between 0 (LOW) and 255 (HIGH)
 *  Create a Fade effect by using all values 0-255 then 255-0
 *
 *  Digital Pins without PWM use digitalWrite with values of 0 (LOW) or 1 (HIGH)
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED1 3

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
  int DelayTime = 5;

  // Fade LED LOW to HIGH
  for(int i=0; i<255; i++){
    // Set the LED value using analogWrite
    // analogWrite is only usable on Analog pins or Digital PWM pins
    analogWrite(LED1, i);
    // Print current LED value to serial console for troubleshooting
    Serial.print(" LED_VALUE=");
    Serial.println(i);
    // Pause the loop to display LED
    delay(DelayTime);
  }
  
  // Fade LED HIGH to LOW
  for(int i=255; i>0; i--){
    // Set the LED value using analogWrite
    analogWrite(LED1, i);
    // Print current LED value
    Serial.print(" LED_VALUE=");
    Serial.println(i);
    // Pause the loop to display LED
    delay(DelayTime);
  }

}
