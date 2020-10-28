/* **************************
 *  Arduino Nano SMD LED Blink
 *
 *  Use digitalWrite to Blink an LED
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED8 1

void setup() {
  // Initialize LED Pins As Output
  pinMode(LED8, OUTPUT);
}

// Main Loop
void loop() {
  digitalWrite(LED8, HIGH);  // turn the LED on
  delay(500);               // wait for 1/2 second
  digitalWrite(LED8, LOW);   // turn the LED off
  delay(500);               // wait for 1/2 second
}
