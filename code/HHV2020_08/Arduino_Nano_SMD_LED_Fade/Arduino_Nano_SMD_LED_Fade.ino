/* **************************
 *  Arduino Nano SMD LED Blink
 *
 *  Use digitalWrite to Blink an LED
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED08 5
#define LED09 9
#define LED10 12

void setup()
{
  // Initialize LED Pins As Output
  pinMode(LED08, OUTPUT);
  pinMode(LED09, OUTPUT);
  pinMode(LED10, OUTPUT);
}

// Main Loop
void loop() {
  for(int i=0; i<255; i++){
    int pos = i;
    if (pos < 85){
      analogWrite(LED08, (pos * 3));
      analogWrite(LED09, (255 - (pos * 3)));
      analogWrite(LED10, 0);
    } else if (pos < 170){
      pos = pos - 85;
      analogWrite(LED08, (255 - (pos * 3)));
      analogWrite(LED09, 0);
      analogWrite(LED10, (pos * 3));
    } else {
      pos = pos - 170;
      analogWrite(LED08, 0);
      analogWrite(LED09, (pos * 3));
      analogWrite(LED10, (255 - (pos * 3)));
    }
    delay(30);   // wait for 30 ms
  }
}
