const int k_JoystickX_Pin = A5;
const int k_JoystickY_Pin = A4;
const int k_Joystick_Fire = 2;

const int k_ledUP_Pin = 3;
const int k_ledDOWN_Pin = 4;
const int k_ledLEFT_Pin = 5;
const int k_ledRIGHT_Pin = 6;
const int k_ledFIRE_Pin = 7;

const int JOYX_LEFT = 300;
const int JOYX_RIGHT = 700;
const int JOYY_UP = 700;
const int JOYY_DOWN = 300;

void setup()
{
  pinMode(k_Joystick_Fire, INPUT);
  digitalWrite(k_Joystick_Fire, HIGH);  // turn on pull-up resistor
  pinMode(k_ledUP_Pin, OUTPUT);
  pinMode(k_ledDOWN_Pin, OUTPUT);
  pinMode(k_ledLEFT_Pin, OUTPUT);
  pinMode(k_ledRIGHT_Pin, OUTPUT);
  pinMode(k_ledFIRE_Pin, OUTPUT);
}

void loop()
{   
  int xVal = analogRead(k_JoystickX_Pin);
  int yVal = analogRead(k_JoystickY_Pin);

  int left = false;
  int right = false;
  int up = false;
  int down = false;
  int fire = false;  
  
  if(xVal < JOYX_LEFT){
   left = true;
  }
  else if(xVal > JOYX_RIGHT){
    right = true;
  }
  if(yVal < JOYY_DOWN){
    down = true;
  }
  else if(yVal > JOYY_UP){
    up = true;
  }
  if(digitalRead(k_Joystick_Fire) == LOW){
    fire = true;
  }
  digitalWrite(k_ledUP_Pin, up);
  digitalWrite(k_ledDOWN_Pin, down);
  digitalWrite(k_ledLEFT_Pin, left);
  digitalWrite(k_ledRIGHT_Pin, right);
  digitalWrite(k_ledFIRE_Pin, fire);
}
