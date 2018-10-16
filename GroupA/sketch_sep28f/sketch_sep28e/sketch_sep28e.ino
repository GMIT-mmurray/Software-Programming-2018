const int k_numLEDs = 4;
const int kPinLeds[k_numLEDs] = {2, 3, 4, 5}; // LEDs connected← ! " → to pins 2-5 3 4
void setup() {
  for (int i = 0; i < k_numLEDs; i++) {
    pinMode(kPinLeds[i], OUTPUT);
  }
}
void loop()
{
  for (int i = 0; i < k_numLEDs; i++) {
    digitalWrite(kPinLeds[i], HIGH);
    delay(100);
  }
  for (int i = k_numLEDs - 1; i >= 0; i--) {
    digitalWrite(kPinLeds[i], LOW); 
    delay(100);
  }
}
