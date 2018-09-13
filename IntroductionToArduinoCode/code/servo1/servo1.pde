#include <Servo.h>

Servo servo1;

const int kPinPot = A0;
const int kPinServo1 = 9;

void setup()
{
  servo1.attach(kPinServo1);
}

void loop()
{
  int val = analogRead(kPinPot);
  val = map(val, 0, 1023, 0, 180);
  servo1.write(val);
  delay(15);
}

