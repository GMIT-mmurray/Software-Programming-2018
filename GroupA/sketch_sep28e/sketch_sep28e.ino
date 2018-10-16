int delayTime = 1000;
int delayTime1 = 500;
const int kPinLed = 13;

void setup() {
  pinMode(kPinLed, OUTPUT);
}
void loop() {

  for (int i = 0; i < 5; i++) {
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);

  }
  for (int i = 0; i < 5; i++) {
    digitalWrite(kPinLed, HIGH);
    delay(delayTime1);
    digitalWrite(kPinLed, LOW);
    delay(delayTime1);
  }
}
