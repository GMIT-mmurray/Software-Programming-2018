const int kPinLed = 13;
int delayTime = 1000;
int delayTime1 = 500;
int counter = 0;

void setup() {
  pinMode(kPinLed, OUTPUT);
}
void loop() {
  counter = 0;
  while (counter < 5) {
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);
    counter = counter+1; //counter++;
  }
    counter = 0;
    while (counter < 5) {
//  while (counter > 0) {
    digitalWrite(kPinLed, HIGH);
    delay(delayTime1);
    digitalWrite(kPinLed, LOW);
    delay(delayTime1);
//  counter = counter-1; // counter--
    counter++;
  }
}
