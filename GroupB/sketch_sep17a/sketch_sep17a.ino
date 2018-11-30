const int kPinLed = 13;
const int kPin12 = 12;
void setup()
{
  pinMode(kPinLed, OUTPUT);
  pinMode(kPin12, OUTPUT);
  Serial.begin(9600);
}

int delayTime = 1000;
int delayTime12 = 2000;
void loop()
{
  Serial.println("Starting Loop");
  delayTime = delayTime - 101;
  delayTime12 = delayTime12 - 500;

  if (delayTime <= 0) { // If the delay time is zero or less, reset it.
    delayTime = 1000;
  }
  Serial.print("Delay Time for 13 is ");
  Serial.println(delayTime);
  digitalWrite(kPinLed, HIGH);
  delay(delayTime);
  digitalWrite(kPinLed, LOW);
  delay(delayTime);

  if (delayTime12 <= 0) {
    delayTime12 = 2000;
  }
  digitalWrite(kPin12, HIGH);
  delay(delayTime12);
  digitalWrite(kPin12, LOW);
  delay(delayTime12);
}
