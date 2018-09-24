const int kPinLed = 9;
const int kPinLed13 = 13;

void setup()
{
  pinMode(kPinLed, OUTPUT);
  pinMode(kPinLed13, OUTPUT);
}

void loop()
{
  for (int i = 0; i < 5; i++) {
    digitalWrite(kPinLed, HIGH);
    delay(200);
    digitalWrite(kPinLed, LOW);
    delay(200);
  }

   for (int i = 0; i < 5; i++) {
    digitalWrite(kPinLed13, HIGH);
    delay(200);
    digitalWrite(kPinLed13, LOW);
    delay(200);
  }
  delay(1000); // 1 second
}

