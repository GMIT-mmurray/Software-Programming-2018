const int kPinLed1 = 2;
const int kPinLed2 = 3;
const int kPinLed3 = 4;
const int kPinLed4 = 5;
const int kPinLed5 = 6;
const int kPinLed6 = 7;
const int kPinLed7 = 8;
const int kPinLed8 = 9;

void setup()
{
  pinMode(kPinLed1, OUTPUT);
  pinMode(kPinLed2, OUTPUT);
  pinMode(kPinLed3, OUTPUT);
  pinMode(kPinLed4, OUTPUT);
  pinMode(kPinLed5, OUTPUT);
  pinMode(kPinLed6, OUTPUT);
  pinMode(kPinLed7, OUTPUT);
  pinMode(kPinLed8, OUTPUT);
}

void loop()
{
  // turn on the LEDs
  digitalWrite(kPinLed1, HIGH);
  delay(500);
  digitalWrite(kPinLed2, HIGH);
  delay(500);
  digitalWrite(kPinLed3, HIGH);
  delay(500);
  digitalWrite(kPinLed4, HIGH);
  delay(500);
  digitalWrite(kPinLed5, HIGH);
  delay(500);
  digitalWrite(kPinLed6, HIGH);
  delay(500);
  digitalWrite(kPinLed7, HIGH);
  delay(500);
  digitalWrite(kPinLed8, HIGH);
  delay(500);
  // Now turn them off
  digitalWrite(kPinLed1, LOW);
  delay(500);
  digitalWrite(kPinLed2, LOW);
  delay(500);
  digitalWrite(kPinLed3, LOW);
  delay(500);
  digitalWrite(kPinLed4, LOW);
  delay(500);
  digitalWrite(kPinLed5, LOW);
  delay(500);
  digitalWrite(kPinLed6, LOW);
  delay(500);
  digitalWrite(kPinLed7, LOW);
  delay(500);
  digitalWrite(kPinLed8, LOW);
  delay(1000);  // wait 1 second with them all off before starting again
}


