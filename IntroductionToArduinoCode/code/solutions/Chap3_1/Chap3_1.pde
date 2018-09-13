const int kPinButtonGas = 2;
const int kPinButtonBrake = 3;
const int kPinLed = 9;

void setup()
{
  pinMode(kPinButtonGas, INPUT);
  pinMode(kPinButtonBrake, INPUT);
  pinMode(kPinLed, OUTPUT);
  digitalWrite(kPinButtonGas, HIGH); // turn on pullup resistor
  digitalWrite(kPinButtonBrake, HIGH); // turn on pullup resistor
}

int  delayTime = 500;
long lastTime = 0;
int ledState = LOW;
void loop()
{
  if(digitalRead(kPinButtonGas) == LOW){
    delayTime = delayTime--;
  }
  else if(digitalRead(kPinButtonBrake) == LOW){
    delayTime = delayTime++;
  }
  delayTime = constrain(delayTime, 10, 5000); 
  if((lastTime + delayTime) < millis()){
    ledState = !ledState;
    digitalWrite(kPinLed, ledState);
    lastTime = millis();
  }  
  delay(10);
}

