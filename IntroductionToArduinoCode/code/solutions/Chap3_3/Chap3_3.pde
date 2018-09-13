const int kPinPot1 = A0;
const int kPinPot2 = A1;
const int kPinPot3 = A2;
const int kPinLed_R = 6;
const int kPinLed_G = 10;
const int kPinLed_B = 11;
const int kPinBtnTo = 2;
const int kPinBtnFrom = 3;

void setup()
{
  pinMode(kPinLed_R, OUTPUT);
  pinMode(kPinLed_G, OUTPUT);
  pinMode(kPinLed_B, OUTPUT);
  pinMode(kPinBtnTo, INPUT);
  pinMode(kPinBtnFrom, INPUT);
  digitalWrite(kPinBtnTo, HIGH);  // enable pull-up resistor
  digitalWrite(kPinBtnFrom, HIGH); // enable pull-up resistor
}

int fromRed = 0;
int fromGreen = 0;
int fromBlue = 0;
int toRed = 255;
int toGreen = 255;
int toBlue = 255;

int currStep = 0;
int change = 1;

void loop()
{
  int pot1Value;
  int pot2Value;
  int pot3Value;

  pot1Value = analogRead(kPinPot1);
  pot2Value = analogRead(kPinPot2);
  pot3Value = analogRead(kPinPot3);

  if(digitalRead(kPinBtnFrom) == LOW){
    fromRed = map(pot1Value, 0, 1023, 0, 255);
    analogWrite(kPinLed_R, fromRed);

    fromGreen = map(pot2Value, 0, 1023, 0, 255);
    analogWrite(kPinLed_R, fromGreen);

    fromBlue = map(pot3Value, 0, 1023, 0, 255);
    analogWrite(kPinLed_R, fromBlue);
  }
  else if(digitalRead(kPinBtnTo) == LOW){
    toRed = map(pot1Value, 0, 1023, 0, 255);
    analogWrite(kPinLed_R, toRed);

    toGreen = map(pot2Value, 0, 1023, 0, 255);
    analogWrite(kPinLed_G, toGreen);

    toBlue = map(pot3Value, 0, 1023, 0, 255);   
    analogWrite(kPinLed_B, toBlue);
  }
  else{ 
    currStep = currStep + change;
    if(currStep > 255){
      change = -1;
      currStep = 255;
    }
    if(currStep < 0){
      change = 1;
      currStep = 0;
    }
    
    int ledValue = map(currStep, 0, 255, fromRed, toRed);
    analogWrite(kPinLed_R, ledValue);

    ledValue = map(currStep, 0, 255, fromGreen, toGreen);
    analogWrite(kPinLed_G, ledValue);

    ledValue = map(currStep, 0, 255, fromBlue, toBlue);
    analogWrite(kPinLed_B, ledValue);
    delay(4);  // because 4 * 255 = a litle more than 1000, 1 second
  }     
}





