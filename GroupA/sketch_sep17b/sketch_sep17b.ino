const int kPinLed =   13;
const int kPinLed12 = 12;
void setup()
{
   pinMode(kPinLed, OUTPUT);
   pinMode(kPinLed12, OUTPUT);
   Serial.begin(9600);
}

int delayTime = 300;
int delayTime1 = 700;

void loop()
{
    Serial.println("Starting loop"); 
    delayTime = delayTime - 30;
    if(delayTime <= 0){   // If the delay time is zero or less, reset it.
      delayTime = 300;
    }
    Serial.println("Pin 13");
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);

    delayTime1 = delayTime1 - 40;
    if (delayTime1 <= 0) {
      delayTime1 = 600;
    }
    Serial.println("Pin 12");
    digitalWrite(kPinLed12, HIGH);
    delay(delayTime1);
    digitalWrite(kPinLed12, LOW);
    delay(delayTime1);    
}
