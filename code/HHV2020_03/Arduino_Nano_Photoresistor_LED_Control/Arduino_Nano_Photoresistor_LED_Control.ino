/* **************************
 *  Arduino Nano Photoresistor LED Control
 *
 *  Use the input from a Photoresistor to control an LED
 *  The Photoresistor will provide analog values indicating dark or light
 *  Set an LED to on (HIGH) or off (LOW) based on dark or light values
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED3 8
#define PR1 A0

// Define Variables
int pval;

void setup()
{
  // Initialize LED Pins As Output
  pinMode(LED3, OUTPUT);

  // Initialize Photoresistor Pin As Input:
  pinMode(PR1, INPUT);

  // Set up serial output to console (baud)
  Serial.begin(38400);
}

// Main Loop
void loop()
{
  // Set Delay Time [in ms]
  int DelayTime = 100;

  // Set the Photoresistor Threshold
  int pthr = 30;

  // Record the Photoresistor Value
  pval = analogRead(PR1);
  // Print current Photoresistor Value to serial console for troubleshooting
  Serial.print(" PVAL=");
  Serial.print(pval);

  // Set the LED value to HIGH (on) or LOW (off)
  // based on Photoresistor Value and Threshold
  if (pval > pthr) {
    // Turn LED OFF
    digitalWrite(LED3, LOW);
    // Print current LED state to serial console for troubleshooting
    Serial.print(" LED OFF");
  } else {
    // Turn LED ON
    digitalWrite(LED3, HIGH);
    // Print current LED state to serial console for troubleshooting
    Serial.print(" LED ON");
  }

  // Print a new line to the serial console
  Serial.println();

  // Pause the loop keeping the LED lit with current values before resuming
  delay(DelayTime);

}
