#define NOTE_C4  262
#define NOTE_D4  294
#define NOTE_E4  330
#define NOTE_F4  349
#define NOTE_G4  392
#define NOTE_A4  440
#define NOTE_B4  494
#define NOTE_C5  523

const int kPinSpeaker = 9;

void setup()
{
  pinMode(kPinSpeaker, OUTPUT);
}

void loop()
{
  tone(kPinSpeaker, NOTE_C4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_D4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_E4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_F4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_G4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_A4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_B4, 500);
  delay(500);
  tone(kPinSpeaker, NOTE_C5, 500);
  delay(500);

  noTone(kPinSpeaker);

  delay(2000);
}

