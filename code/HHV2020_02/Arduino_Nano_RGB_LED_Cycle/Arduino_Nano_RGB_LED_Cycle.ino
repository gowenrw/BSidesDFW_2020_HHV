/* **************************
 *  Arduino Nano RGB LED Cycle
 *
 *  Cycle between predefined RGB color values
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED2_RED 4
#define LED2_GREEN 6
#define LED2_BLUE 7

// Define Variables
int c = 0;

void setup()
{
  // Initialize LED Pins As Output
  pinMode(LED2_RED, OUTPUT);
  pinMode(LED2_GREEN, OUTPUT);
  pinMode(LED2_BLUE, OUTPUT);

  // Set up serial output to console (baud)
  Serial.begin(38400);
}

// Main Loop
void loop()
{
  // Set Delay for each transition of main loop [in ms]
  int DelayTime = 100;

  // Color Settings in R,G,B Binary Values
  // 0     1   2      3     4    5    6
  // White Red Yellow Green Cyan Blue Magenta
  int Color[7][3] = {
    {1, 1, 1}, {1, 0, 0}, {1, 1, 0}, {0, 1, 0}, {0, 1, 1}, {0, 0, 1}, {1, 0, 1}
  };

  // LED Pin Array
  int LED[3] = {
    LED2_RED, LED2_GREEN, LED2_BLUE
  };

  // Print to the serial console the current color selection for troubleshooting
  Serial.print(" C=");
  Serial.print(c);

  for (int i = 0; i < 3; i++) {         // Loop Through Each Color (MAX = 3 RGB)
    // Send the digital value (1 or 0) to the LED PIN
    digitalWrite(LED[i], Color[c][i]);
    // Print to the serial console the pin and value sent for troubleshooting
    Serial.print(" PIN=");
    Serial.print(LED[i]);
    Serial.print(" VALUE=");
    Serial.print(Color[c][i]);
  }

  // Increment the Current Color
  c = c + 1;
  if (c > 6) {
    c = 0;
  }

  // Print a new line to the serial console
  Serial.println();

  // Pause the loop keeping the LED lit with current values before resuming
  delay(DelayTime);

}
