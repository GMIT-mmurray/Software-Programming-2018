const int kPinPot = A0;
const int kPinLed = 9;

void setup()
{
  pinMode(kPinLed, OUTPUT);
}

void loop()
{
  int sensorValue;

  sensorValue = analogRead(kPinPot);

  digitalWrite(kPinLed, HIGH);
  delay(sensorValue);
  digitalWrite(kPinLed, LOW);
  delay(sensorValue);
}


