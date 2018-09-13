const int kPinTemp = A0; 

void setup()
{
  Serial.begin(9600);  
}

void loop()                    
{
  float temperatureC = getTemperatureC(); 

  Serial.print(temperatureC); 
  Serial.println(" degrees C");

  // now convert to Fahrenheit
  float temperatureF = convertToF(temperatureC);

  Serial.print(temperatureF); 
  Serial.println(" degrees F");

  delay(500);                                    
}

float getTemperatureC()
{
  int reading = analogRead(kPinTemp);

  float voltage = (reading * 5.0) / 1024;
  // convert from 10 mv per degree with 500mV offset 
  // to degrees ((voltage - 500mV) * 100)
  return (voltage - 0.5) * 100;
}

float convertToF(float temperatureC)
{
  return (temperatureC * 9.0 / 5.0) + 32.0;
}

