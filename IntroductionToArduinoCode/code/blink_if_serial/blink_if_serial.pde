const int kPinLed = 13;

void setup()
{
   pinMode(kPinLed, OUTPUT);
   Serial.begin(9600);
}

int delayTime = 1000;

void loop()
{
    delayTime = delayTime - 100;
    if(delayTime <= 0){   // If it would have been zero or less, reset it.
      delayTime = 1000;
    }
    Serial.print("delayTime = ");
    Serial.println(delayTime);
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);
}
