const int kPin_LED = 9;
const int kPin_Photocell = A1;

void setup()
{
  pinMode(kPin_LED, OUTPUT);
}

void loop()
{
  int value = analogRead(kPin_Photocell); 
  int brightness = map(value, 0, 1023, 0, 255);
 
  analogWrite(kPin_LED, brightness);
}
