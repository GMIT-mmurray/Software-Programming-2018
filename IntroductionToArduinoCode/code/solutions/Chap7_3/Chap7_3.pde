const int k_ReedSwitchPin = 2;
const int k_Pin_Speaker = 9;
const int k_LEDPin = 13;

void setup()
{
  pinMode(k_ReedSwitchPin, INPUT);
  digitalWrite(k_ReedSwitchPin, HIGH); // turn on pullup resistor
  pinMode(k_LEDPin, OUTPUT);
  pinMode(k_Pin_Speaker, OUTPUT);
}

void loop()
{
  if(digitalRead(k_ReedSwitchPin) == LOW){
     digitalWrite(k_LEDPin, HIGH);
     tone(k_Pin_Speaker, 440);
  }
  else{
     digitalWrite(k_LEDPin, LOW);
     noTone(k_Pin_Speaker);
  }
}

