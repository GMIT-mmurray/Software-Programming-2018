#include "pitches.h"

const int k_speakerPin = 9;

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
  pinMode(k_speakerPin, OUTPUT);
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
  long timeDelay = (1000000 / (2 * freq));  // calculate num of microsec to delay
  long endTime = millis() + duration;
  // will have a bug with rollover time
  while(millis() < endTime){
     digitalWrite(k_speakerPin, HIGH);
     delayMicroseconds(timeDelay);
     digitalWrite(k_speakerPin, LOW);
     delayMicroseconds(timeDelay);
  }
}


