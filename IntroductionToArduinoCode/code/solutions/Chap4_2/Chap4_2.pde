#include "pitches.h"

const int k_speakerPin = 9;
const int k_btn1Pin = 2;
const int k_btn2Pin = 3;

#define NUM_NOTES_TUNE1 7

const int notes_tune1[NUM_NOTES_TUNE1] = // a 0 represents a rest
{
  NOTE_C4, NOTE_C4, NOTE_D4, NOTE_C4, 
  NOTE_F4, NOTE_E4, 0
};

const int beats_tune1[NUM_NOTES_TUNE1] = { 
  1, 1, 2, 2, 2, 4, 4 };

#define NUM_NOTES_TUNE2 15

const int notes_tune2[NUM_NOTES_TUNE2] = // a 0 represents a rest
{
  NOTE_C4, NOTE_C4, NOTE_G4, NOTE_G4, 
  NOTE_A4, NOTE_A4, NOTE_G4, NOTE_F4,
  NOTE_F4, NOTE_E4, NOTE_E4, NOTE_D4, 
  NOTE_D4, NOTE_C4, 0
};

const int beats_tune2[NUM_NOTES_TUNE2] = { 
  1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 4 };
  
const int tempo = 300;

void setup() 
{
  pinMode(k_speakerPin, OUTPUT);
  pinMode(k_btn1Pin, INPUT);
  pinMode(k_btn2Pin, INPUT);
  digitalWrite(k_btn1Pin, HIGH); // turn on pull-up resistor
  digitalWrite(k_btn2Pin, HIGH); // turn on pull-up resistor
}

void loop() 
{
  if(digitalRead(k_btn1Pin) == LOW){
    playTune1();
  }
  if(digitalRead(k_btn2Pin) == LOW){
    playTune2();
  }  
}

void playTune1()
{
  for (int i = 0; i < NUM_NOTES_TUNE1; i++) {
    if (notes_tune1[i] == 0) {
      delay(beats_tune1[i] * tempo); // rest
    } 
    else {
      ourTone(notes_tune1[i], beats_tune1[i] * tempo);
    }
    // pause between notes
    delay(tempo / 2); 
  }
}

void playTune2()
{
  for (int i = 0; i < NUM_NOTES_TUNE2; i++) {
    if (notes_tune2[i] == 0) {
      delay(beats_tune2[i] * tempo); // rest
    } 
    else {
      ourTone(notes_tune2[i], beats_tune2[i] * tempo);
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



