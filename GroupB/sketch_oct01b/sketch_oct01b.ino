const int kPinStart = 2;
const int kPinLedStart = 8;
const int kPinEnd = 7;
const int kPinLedEnd = 13;
const int diff = kPinLedStart-kPinStart;
void setup()
{
  for (int i=kPinStart; i <= kPinEnd; i++) {
    pinMode(i, INPUT);
  }
  for (int i=kPinLedStart; i <= kPinLedEnd; i++) {
    pinMode(i, OUTPUT);
  }
}

void loop()
{
  for (int i=kPinStart; i<=kPinEnd; i++) {
    if (digitalRead(i) == LOW) {
      digitalWrite(i+diff, LOW);
    }
    else {
      digitalWrite(i+diff, HIGH);
    }
  }
}

