#include "pitches.h"

const int k_speakerPin = 9;
const int k_sensorPin = A5;
const int k_threshold = 100;  

#define NUM_NOTES 15

const int notes[NUM_NOTES] = // a 0 represents a rest
{
  NOTE_C4, NOTE_C4, NOTE_G4, NOTE_G4, 
  NOTE_A4, NOTE_A4, NOTE_G4, NOTE_F4,
  NOTE_F4, NOTE_E4, NOTE_E4, NOTE_D4, 
  NOTE_D4, NOTE_C4, 0
};

const int beats[NUM_NOTES] = { 
  1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 4 };
const int tempo = 300;

void setup()
{
  pinMode(k_speakerPin, OUTPUT);
}

void loop()
{
  if (analogRead(k_sensorPin) >= k_threshold) {
    playTune();
  }  
}

void playTune()
{
  for (int i = 0; i < NUM_NOTES; i++) {
    if (notes[i] == 0) {
      delay(beats[i] * tempo); // rest
    } 
    else {
      ourTone(notes[i], beats[i] * tempo);
    }
    // pause between notes
    delay(tempo / 2); 
  }
}



void ourTone(int freq, int duration)
{
  tone(k_speakerPin, freq, duration);
  delay(duration);
  noTone(k_speakerPin);
}

