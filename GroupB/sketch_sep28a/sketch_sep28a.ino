const int kPinLed = 13;
const int delayTime1    = 1000;
const int delayTime2    = 500;
int counter = 5;
void setup() {
  pinMode(kPinLed, OUTPUT);
}
void loop()
{
  counter = 5;
  while (counter > 0 ) {
    digitalWrite(kPinLed, HIGH);
    delay(delayTime1);
    digitalWrite(kPinLed, LOW);
    delay(delayTime1);
    counter = counter - 1; // counter--
  }
  counter = 5;
  while (counter > 0) {
    digitalWrite(kPinLed, HIGH);
    delay(delayTime2);
    digitalWrite(kPinLed, LOW);
    delay(delayTime2);
    counter = counter - 1; // counter--
  }
}
