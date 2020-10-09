/* **************************
 *  RGB LED with Tactile Switch
 *  This program will light the RGB LED and
 *  change color when the button is pressed
 * ************************** */

// Define Pins
#define LED1 3

// Define Variables
  
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

  // Fade LED LOW to HIGH
  for(int i=0; i<255; i++){
    // Set the LED value using analogWrite
    // analogWrite is only usable on Analog pins or Digital PWM pins
    analogWrite(LED1, i);
    // Print current LED value to serial console for troubleshooting
    Serial.print(" LED_VALUE=");
    Serial.println(i);
    // Pause the loop to display LED for this many ms
    delay(5);
  }
  // Fade LED HIGH to LOW
  for(int i=255; i>0; i--){
    // Set the LED value using analogWrite
    analogWrite(LED1, i);
    // Print current LED value
    Serial.print(" LED_VALUE=");
    Serial.println(i);
    // Pause the loop to display LED
    delay(5);
  }
  
}
