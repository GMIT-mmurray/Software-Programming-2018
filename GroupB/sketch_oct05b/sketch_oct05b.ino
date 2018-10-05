const int kPinPot = A0;
const int kPinLed = 9;
int ledBrightness;
int sensorValue = A0;
void setup()
{
  pinMode(kPinPot, INPUT);
  pinMode(kPinLed, OUTPUT);
}

void loop()
{
  sensorValue = analogRead(kPinPot);
  ledBrightness = map(sensorValue, 0, 1023, 0, 255);
  analogWrite(kPinLed, ledBrightness);
}
