 int startPIN =  2;
const int endPIN   =  10;
void setup()
{
  // pinMode(2, OUTPUT);
  // pinMode(kPinLed2, OUTPUT);
  // pinMode(kPinLed3, OUTPUT);
  //  pinMode(kPinLed4, OUTPUT);
  for (char i = startPIN; i < endPIN; i++) {
    digitalWrite(i, OUTPUT);
   }
}

void loop()
{
  // turn on each of the LEDs in order
  //digitalWrite(kPinLed1, HIGH);
  //delay(100);
  //digitalWrite(kPinLed2, HIGH);
  //delay(100);
  //digitalWrite(kPinLed3, HIGH);
  //delay(100);
  //digitalWrite(kPinLed4, HIGH);

  for (int i = startPIN; i < endPIN; i++) {
    digitalWrite(i, HIGH);
    delay(100);
  }

  delay(1000);
  //digitalWrite(kPinLed1, LOW);
  //delay(100);
  //digitalWrite(kPinLed2, LOW);
  //delay(100);
  //digitalWrite(kPinLed3, LOW);
  //delay(100);
  //digitalWrite(kPinLed4, LOW);
  for (int i = startPIN; i < endPIN; i++) {
    digitalWrite(i, LOW);
    delay(100);
  }
}
