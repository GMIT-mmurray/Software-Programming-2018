#include <PCD8544.h>

const int kPin_CLK = 5;
const int kPin_DIN = 6;
const int kPin_DC = 7;
const int kPin_RESET = 8;
const int kPin_Temp = A0;

PCD8544 lcd(kPin_CLK, kPin_DIN, kPin_DC, kPin_RESET);

void setup()
{
  lcd.init();
  lcd.setCursor(10,0);
  lcd.print("Temperature:");
}

float maxTemp = -200; // smaller than we can ever see
float minTemp = 200; // larger than we can ever see

void loop()
{
  float temperatureC = getTemperatureC(); 
   // now convert to Fahrenheit
  float temperatureF = convertToF(temperatureC);
  
  if(temperatureF > maxTemp){
    maxTemp = temperatureF;
  }
  if(temperatureF < minTemp){
    minTemp = temperatureF;
  }
 
  lcd.setCursor(16,1);
  lcd.print(temperatureF);
  lcd.print(" F");
  lcd.setCursor(16, 2);
  lcd.print(maxTemp);
  lcd.print(" F max");
  lcd.setCursor(16, 3);
  lcd.print(minTemp);
  lcd.print(" F min");
  delay(100); 
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
