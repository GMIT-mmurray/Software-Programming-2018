const int kPinPot = A0;
const int kPinButton = 2;
const int kPinLed = 9;

void setup()
{
  pinMode(kPinLed, OUTPUT);
  pinMode(kPinButton, INPUT);
  digitalWrite(kPinButton, HIGH); // enable pull-up resistor
}

long int lastTime = 0;
int ledValue = LOW;
int sensorValue;

void loop()
{   
  if(digitalRead(kPinButton) == LOW){
    sensorValue = analogRead(kPinPot);
  }
  if(millis() > lastTime + sensorValue){
    if(ledValue == LOW){
      ledValue = HIGH;
    }
    else{
      ledValue = LOW;
    }
    lastTime = millis();
    digitalWrite(kPinLed, ledValue);
  } 
}


