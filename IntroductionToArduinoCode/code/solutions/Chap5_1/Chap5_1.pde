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

void loop()
{
  float voltage = getVoltage();
  float temperatureC = getTemperatureC(voltage); 
   // now convert to Fahrenheit
  float temperatureF = convertToF(temperatureC);
 
  lcd.setCursor(21,1);
  lcd.print(temperatureC);
  lcd.print(" C ");
  lcd.setCursor(21,2);
  lcd.print(temperatureF);
  lcd.print(" F");
  lcd.setCursor(21,3);
  lcd.print(voltage);
  lcd.print(" V");
  delay(100); 
}

float getVoltage()
{
  int reading = analogRead(kPin_Temp);
  
  return (reading * 5.0) / 1024;
}

float getTemperatureC(float voltage)
{
  // convert from 10 mv per degree with 500mV offset 
  // to degrees ((voltage - 500mV) * 100)
  return (voltage - 0.5) * 100;
}

float convertToF(float temperatureC)
{
    return (temperatureC * 9.0 / 5.0) + 32.0;
}
