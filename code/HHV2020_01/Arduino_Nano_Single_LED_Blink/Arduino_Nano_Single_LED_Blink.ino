/* **************************
 *  Arduino Nano Single LED Blink
 *
 *  Use digitalWrite to Blink an LED
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED1 3

void setup() {
  // Initialize LED Pins As Output
  pinMode(LED1, OUTPUT);
}

// Main Loop
void loop() {
  digitalWrite(LED1, HIGH);  // turn the LED on
  delay(2000);               // wait for 2 seconds
  digitalWrite(LED1, LOW);   // turn the LED off
  delay(2000);               // wait for 2 seconds
}

