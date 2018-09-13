#include <Servo.h>

const int kPinJoystickX = A5;
const int kPinJoystickY = A4;
const int kPinJoystickFire = 2;
const int kPinServoPan = 9;
const int kPinServoTilt = 10;
const int kPinServoFire = 11;

const int JOYX_LEFT = 300;
const int JOYX_RIGHT = 700;
const int JOYY_UP = 700;
const int JOYY_DOWN = 300;

Servo panServo;
Servo tiltServo;
Servo fireServo;

int panAngle = 90;
int tiltAngle = 90;
int fireAngle = 0;

void setup()
{
  pinMode(kPinJoystickFire, INPUT);
  digitalWrite(kPinJoystickFire, HIGH); // turn on pull-up resistor
  fireServo.attach(kPinServoFire);
  fireServo.write(0);
  delay(500);
  fireServo.detach();
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

  if(digitalRead(kPinJoystickFire) == LOW){
    fireServo.attach(kPinServoFire);
    fireServo.write(180);
    delay(500);
    fireServo.write(0);
    delay(500);
    fireServo.detach();
    while(digitalRead(kPinJoystickFire) == LOW){
      // wait for it not to be low anymore
    }
  }
}



