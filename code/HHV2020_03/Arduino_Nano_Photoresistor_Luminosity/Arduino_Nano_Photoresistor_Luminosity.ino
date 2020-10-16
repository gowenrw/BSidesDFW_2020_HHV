/* **************************
 *  Arduino Nano Photoresistor Luminosity
 *
 *  Use the input from a Photoresistor to measure
 *  the amount of light a.k.a. luminosity (Lux)
 *  in lumens it is receiving in real time
 *
 *  Written by @alt_bier
 * ************************** */

// Define Pins
#define LED3 8
#define PR1 A0

// Define Constants
#define VIN 3.3  // V power voltage
#define R7 10000 // Pull down resistor ohm value 

// Define Variables
int pval;
float lux;
// Variable converts raw analog value to physical light value (lumen)
float sensorRawToPhys(int raw){
  // Conversion rule
  float Vout = float(raw) * (VIN / float(1023)); // Conversion analog to voltage
  float RLDR = (R7 * (VIN - Vout))/Vout;         // Conversion voltage to resistance
  float phys=500/(RLDR/1000);                    // Conversion resistance to lumen
  return phys;
}

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
  // Print current Photoresistor RAW Value to serial console for troubleshooting
  Serial.print(" PVAL=");
  Serial.print(pval);
  Serial.print(" raw    ");
  // Get the lumens based on pval
  lux = sensorRawToPhys(pval);
  // Print the Light Level
  Serial.print(" Light=");
  Serial.print(lux); 
  Serial.print(" lumen    ");
  
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
