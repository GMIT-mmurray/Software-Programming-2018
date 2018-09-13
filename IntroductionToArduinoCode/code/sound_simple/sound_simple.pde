const int kPinSpeaker = 9;
const int k_timeDelay = 1136;

void setup()
{
  pinMode(kPinSpeaker, OUTPUT);
}

void loop()
{
  digitalWrite(kPinSpeaker, HIGH);
  delayMicroseconds(k_timeDelay);
  digitalWrite(kPinSpeaker, LOW);
  delayMicroseconds(k_timeDelay);
}

