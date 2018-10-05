const int k_numLEDs = 6;
const int kPinLeds[k_numLEDs] = {7,2, 3, 4,6, 5}; // LEDs connected← ! " → to pins 2-5 3 4
const int kPinDelayTimes[k_numLEDs] = {400,788,.......};
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
