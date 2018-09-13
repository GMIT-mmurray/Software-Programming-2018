const int kPinReedSwitch = 2;
const int kPinLed = 13;

void setup()
{
  pinMode(kPinReedSwitch, INPUT);
  digitalWrite(kPinReedSwitch, HIGH); // turn on pullup resistor
  pinMode(kPinLed, OUTPUT);
}

void loop()
{
  if(digitalRead(kPinReedSwitch) == LOW){
    digitalWrite(kPinLed, HIGH);
  }
  else{
    digitalWrite(kPinLed, LOW);
  }
}


