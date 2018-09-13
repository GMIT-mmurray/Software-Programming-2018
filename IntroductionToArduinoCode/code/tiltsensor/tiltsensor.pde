const int kPin_Tilt = 3;
const int kPin_LED  = 13;

void setup()
{
  pinMode(kPin_Tilt, INPUT);
  digitalWrite(kPin_Tilt, HIGH);  // turn on built-in pull-up resistor
  pinMode(kPin_LED, OUTPUT);
}

void loop()
{ 
  if(digitalRead(kPin_Tilt) == HIGH){
    digitalWrite(kPin_LED, LOW);
  }
  else{
    digitalWrite(kPin_LED, HIGH);
  }
}
