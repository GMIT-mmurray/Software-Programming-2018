#include <PCD8544.h>

const int kPin_Btn = 2;
const int kPin_SCLK = 5;
const int kPin_SDIN = 6;
const int kPin_DC = 7;
const int kPin_RESET = 8;
const int kPin_Temp = A0;

PCD8544 lcd(kPin_SCLK, kPin_SDIN, kPin_DC, kPin_RESET);

// A bitmap graphic (5x1) of a degree symbol
const int DEGREE_WIDTH = 5;
const int DEGREE_HEIGHT = 1;
const byte degreesBitmap[] = { 0x00, 0x07, 0x05, 0x07, 0x00 };

// A bitmap graphic (10x2) of a thermometer...
const int THERMO_WIDTH = 10;
const int THERMO_HEIGHT = 2;
const byte thermometerBitmap[] = 
{ 0x00, 0x00, 0x48, 0xfe, 0x01, 0xfe, 0x00, 0x02, 0x05, 0x02,
  0x00, 0x00, 0x62, 0xff, 0xfe, 0xff, 0x60, 0x00, 0x00, 0x00};

const int LCD_WIDTH = 84;
const int LCD_HEIGHT = 6;
const int GRAPH_HEIGHT = 5;

const int MIN_TEMP = 50;
const int MAX_TEMP = 100;

void setup()
{
  pinMode(kPin_Btn, INPUT);
  digitalWrite(kPin_Btn, HIGH);  // turn on pull-up resistor
  lcd.init();
  lcd.setCursor(10,0);
  lcd.print("Temperature:");
  lcd.setCursor(0, LCD_HEIGHT - THERMO_HEIGHT);
  lcd.drawBitmap(thermometerBitmap, THERMO_WIDTH, THERMO_HEIGHT);
}

int xChart = LCD_WIDTH;
bool displayF = true;

void loop()
{
  float temperatureC = getTemperatureC(); 
   // now convert to Fahrenheit
  float temperatureF = convertToF(temperatureC);
  
  if(digitalRead(kPin_Btn) == LOW){
    displayF = !displayF;
    while(digitalRead(kPin_Btn) == LOW){
    }
  } 
    
  lcd.setCursor(21,1);
  if(displayF){
     lcd.print(temperatureF);
  }
  else{
    lcd.print(temperatureC);
  }
  lcd.drawBitmap(degreesBitmap, DEGREE_WIDTH, DEGREE_HEIGHT);
  if(displayF){
     lcd.print(" F");
  }
  else{
    lcd.print(" C");
  }
  if(xChart >= LCD_WIDTH){
    xChart = THERMO_WIDTH + 2;
  }
  lcd.setCursor(xChart, 2);
  int dataHeight = map(temperatureF, MIN_TEMP, MAX_TEMP, 0, GRAPH_HEIGHT * 8);
  
  drawColumn(dataHeight);
  drawColumn(0);  // marker to see current chart position
  xChart++;
  
  delay(500); 
}

float getTemperatureC()
{
  int reading = analogRead(kPin_Temp);
  
  float voltage = (reading * 5.0) / 1024;
  // convert from 10 mv per degree with 500mV offset 
  // to degrees ((voltage - 500mV) * 100)
  return (voltage - 0.5) * 100;
}

float convertToF(float temperatureC)
{
    return (temperatureC * 9.0 / 5.0) + 32.0;
}

const byte dataBitmap[] = 
{0x00, 0x80, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC, 0xFE};

void drawColumn(unsigned int value)
{
    byte graphBitmap[GRAPH_HEIGHT];
    int i;
    
    if(value > (GRAPH_HEIGHT * 8)){
      value = GRAPH_HEIGHT * 8;
    }
    // value is number of pixels to draw
   
    //1. clear all pixels in graphBitmap
    for(i = 0; i < GRAPH_HEIGHT; i++){
      graphBitmap[i] = 0x00;
    }
    
    //2. Fill all of the ones that should be completely full
    i = 0;
    while(value >= 8){
       graphBitmap[GRAPH_HEIGHT - 1 - i] = 0xFF;
       value -= 8;
       i++;
    }
    if(i != GRAPH_HEIGHT){
       graphBitmap[GRAPH_HEIGHT - 1 - i] = dataBitmap[value];
    }
    lcd.drawBitmap(graphBitmap, 1, GRAPH_HEIGHT);
}
