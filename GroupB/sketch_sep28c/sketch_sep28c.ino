const int k_numLEDs = 6;
const int kPinLeds[k_numLEDs] = {5, 3, 8, 2, 7, 4}; // LEDs connected← ! " → to pins 2-5 3 4
const int kPinBlinkTime[k_numLEDs] = {300, ........};
void setup() {
  for (int i = 0; i < k_numLEDs; i++)
  { 
    pinMode(kPinLeds[i], OUTPUT); 
  }
}
void loop() {
  for (int i = 0; i < k_numLEDs; i++) {
    digitalWrite(kPinLeds[i], HIGH);
    delay(100);

  }
  for (int i = k_numLEDs - 1; i >= 0; i--) {

    digitalWrite(kPinLeds[i], LOW);
    delay(100);
  }
}
