const int kPinButton1 = 2;
const int kPinLed = 9;
const int kPinButton2 = 3;
const int kPinLed1 = 10;
void setup()
{
  pinMode(kPinButton1, INPUT);
  digitalWrite(kPinButton1, HIGH); // turn on pull-up resistor
  pinMode(kPinLed, OUTPUT);
  pinMode(kPinButton2, INPUT);
  pinMode(kPinLed1, OUTPUT);
}

void loop()
{
  if (digitalRead(kPinButton1) == LOW) {
    digitalWrite(kPinLed, LOW);
  }
  else {
    digitalWrite(kPinLed, HIGH);
  }
  
  int value = digitalRead(kPinButton2);

  if (value == LOW) {
    digitalWrite(kPinLed1, LOW);
  }
  else {
    digitalWrite(kPinLed1, HIGH);
  }
}

