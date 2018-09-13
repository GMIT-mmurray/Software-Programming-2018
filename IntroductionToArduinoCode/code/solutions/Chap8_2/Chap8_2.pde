#include <Servo.h>

const int k_Servo_Pin = 9;

Servo servo;

void setup()
{
  servo.attach(k_Servo_Pin);
}

void loop()
{
  for(int i = 0; i < 180; i++){
    servo.write(i);
    delay(20);
  }
  for(int i = 180; i > 0; i--){
    servo.write(i);
    delay(20);
  }     
}



