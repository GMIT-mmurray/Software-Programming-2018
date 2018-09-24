const int kPinLed1 =  2;
const int kPinLed2 =  3;
const int kPinLed3 =  4;
const int kPinLed4 =  5;

void setup()
{
  for (int i = 0 ;i < 14 ; i++) {
    pinMode(i, OUTPUT);
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
  //delay(100);

  for (int i = 0; i < 14; i++) {
    digitalWrite(i, HIGH);
    delay(100);
  }

  // turn off each of the LEDs in order
  //digitalWrite(kPinLed1, LOW);
  //delay(100);
  //digitalWrite(kPinLed2, LOW);
  //delay(100);
  //digitalWrite(kPinLed3, LOW);
  //delay(100);
  //digitalWrite(kPinLed4, LOW);

  for (int i = 0; i < 14; i++) {
    digitalWrite(i, LOW);
    delay(100);
  }

}
