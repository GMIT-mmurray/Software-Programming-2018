const int kPin_Tilt = 3;
const int kPin_LED  = 13;
const int kPin_Speaker = 9;

void setup()
{
  pinMode(kPin_Tilt, INPUT);
  digitalWrite(kPin_Tilt, HIGH);  // turn on built-in pull-up resistor
  pinMode(kPin_LED, OUTPUT);
  pinMode(kPin_Speaker, OUTPUT);
}

void loop()
{
  if(digitalRead(kPin_Tilt) == LOW){
    digitalWrite(kPin_LED, HIGH);
    soundAlarm();
  }
  else{
    digitalWrite(kPin_LED, LOW);
  }
}

void soundAlarm()
{
  for(int freq = 440; freq < 4000; freq = freq * 2){
    tone(9, 440);
    delay(10);
  }
  noTone(9);
}
