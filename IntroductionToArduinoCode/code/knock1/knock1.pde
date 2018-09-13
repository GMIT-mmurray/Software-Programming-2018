const int kPinSensor = A5;
const int kPinLed = 13;
const int k_threshold = 100;  

int ledState = LOW;         // variable used to store the last LED status, to toggle the light

void setup()
{
  pinMode(kPinLed, OUTPUT); // declare the ledPin as as OUTPUT
}

void loop()
{
  int val = analogRead(kPinSensor);    

  if (val >= k_threshold) {
    ledState = !ledState;   // toggle the value of ledState
    digitalWrite(kPinLed, ledState);
    delay(20);  // for debouncing
  }
}

