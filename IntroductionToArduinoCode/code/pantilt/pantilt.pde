#include <Servo.h>

const int kPinJoystickX = A5;
const int kPinJoystickY = A4;
const int kPinJoystickFire = 2;
const int kPinServoPan = 9;
const int kPinServoTilt = 10;

const int JOYX_LEFT = 300;
const int JOYX_RIGHT = 700;
const int JOYY_UP = 700;
const int JOYY_DOWN = 300;

Servo panServo;
Servo tiltServo;

int panAngle = 0;
int tiltAngle = 90;

void setup()
{
  panServo.attach(kPinServoPan);
  tiltServo.attach(kPinServoTilt);
}

void loop()
{
  int xVal = analogRead(kPinJoystickX);
  int yVal = analogRead(kPinJoystickY);

  if(xVal < JOYX_LEFT){
    panAngle--;
  }
  else if(xVal > JOYX_RIGHT){
    panAngle++;
  }
  if(yVal < JOYY_DOWN){
    tiltAngle--;
  }
  else if(yVal > JOYY_UP){
    tiltAngle++;
  }
  tiltAngle = constrain(tiltAngle, 0, 180);
  panAngle = constrain(panAngle, 0, 180);

  panServo.write(panAngle);
  tiltServo.write(tiltAngle);
  delay(20);  // wait for the servos to get there
}



