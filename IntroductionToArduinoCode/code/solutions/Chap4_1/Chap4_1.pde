#include "pitches.h"

int speakerPin = 9;

#define NUM_NOTES 7

const int notes[NUM_NOTES] = // a 0 represents a rest
{
  NOTE_C4, NOTE_C4, NOTE_D4, NOTE_C4, 
  NOTE_F4, NOTE_E4, 0
};

const int beats[NUM_NOTES] = { 
  1, 1, 2, 2, 2, 4, 4 };
const int tempo = 300;

void setup() {
  pinMode(speakerPin, OUTPUT);
}

void loop() {
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
  tone(speakerPin, freq, duration);
  delay(duration);
  noTone(speakerPin);
}

