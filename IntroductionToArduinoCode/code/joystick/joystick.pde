const int kPinJoystickX = A5;
const int kPinJoystickY = A4;
const int kPinJoystickFire = 2;

const int JOYX_LEFT = 300;
const int JOYX_RIGHT = 700;
const int JOYY_UP = 700;
const int JOYY_DOWN = 300;

void setup()
{
  pinMode(kPinJoystickFire, INPUT);
  digitalWrite(kPinJoystickFire, HIGH);  // turn on pull-up resistor
  Serial.begin(9600);
}

void loop()
{
  int xVal = analogRead(kPinJoystickX);
  int yVal = analogRead(kPinJoystickY);

  Serial.print("x = ");
  Serial.print(xVal);
  Serial.print(" y = ");
  Serial.print(yVal);
  Serial.print(' ');

  if(xVal < JOYX_LEFT){
    Serial.print('L');
  }
  else if(xVal > JOYX_RIGHT){
    Serial.print('R');
  }
  if(yVal < JOYY_DOWN){
    Serial.print('D');
  }
  else if(yVal > JOYY_UP){
    Serial.print('U');
  }
  if(digitalRead(kPinJoystickFire) == LOW){
    Serial.print("+F");
  }
  Serial.println();    

  delay(100);  // Keep from overwhelming serial
}

