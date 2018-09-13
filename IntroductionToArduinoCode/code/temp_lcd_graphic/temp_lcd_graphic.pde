#include <PCD8544.h>

const int kPin_CLK = 5;
const int kPin_DIN = 6;
const int kPin_DC = 7;
const int kPin_RESET = 8;
const int kPin_Temp = A0;

PCD8544 lcd(kPin_CLK, kPin_DIN, kPin_DC, kPin_RESET);

// A bitmap graphic (5x1) of a degree symbol
const int DEGREE_WIDTH = 5;
const int DEGREE_HEIGHT = 1;
const byte degreesBitmap[1 * 5] = { 
  0x00, 0x07, 0x05, 0x07, 0x00 };

// A bitmap graphic (10x2) of a thermometer...
const int THERMO_WIDTH = 10;
const int THERMO_HEIGHT = 2;
const byte thermometerBitmap[2 * 10] = 
{ 
  0x00, 0x00, 0x48, 0xfe, 0x01, 0xfe, 0x00, 0x02, 0x05, 0x02,
  0x00, 0x00, 0x62, 0xff, 0xfe, 0xff, 0x60, 0x00, 0x00, 0x00};

const int LCD_WIDTH = 84;
const int LCD_HEIGHT = 6;

void setup()
{
  lcd.init();
  lcd.setCursor(10,0);
  lcd.print("Temperature:");
  lcd.setCursor((LCD_WIDTH-THERMO_WIDTH) / 2, 3);
  lcd.drawBitmap(thermometerBitmap, THERMO_WIDTH, THERMO_HEIGHT);
}

void loop()
{
  float temperatureC = getTemperatureC(); 
  // now convert to Fahrenheit
  float temperatureF = convertToF(temperatureC);

  lcd.setCursor(21,1);
  lcd.print(temperatureF);
  lcd.drawBitmap(degreesBitmap, DEGREE_WIDTH, DEGREE_HEIGHT);
  lcd.print(" F");
  lcd.setCursor(21, 2);
  lcd.print(temperatureC);
  lcd.drawBitmap(degreesBitmap, DEGREE_WIDTH, DEGREE_HEIGHT);
  lcd.print(" C"); 

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

