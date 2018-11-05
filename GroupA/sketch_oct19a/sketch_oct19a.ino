// Function Prototypes
float getTemperatureC();
float getTemperatureC1();
float convertToF(float temperatureC);
int reading;
float voltage;
const int kPinTemp = A0;
const int kPinTemp1 = A1;
float temperatureC;
float temperatureC1;
///////////////////////////////////////////////////////////
void setup()
{
  Serial.begin(9600);
}
///////////////////////////////////////////////////////////
void loop()
{

  temperatureC = getTemperatureC(); // Reads A0
  temperatureC1 = getTemperatureC1(); // Reads A1
  if (temperatureC > temperatureC1) {
    Serial.print("A0 ");
    Serial.print(temperatureC);
    Serial.print(" degrees C  ");
    // now convert to Fahrenheit
    float temperatureF = convertToF(temperatureC);
    Serial.print(temperatureF);
    Serial.println(" degrees F");
  }


  delay(500);
}
///////////////////////////////////////////////////////////
float getTemperatureC()
{
  reading = analogRead(kPinTemp);
  voltage = (reading * 5.0) / 1023;
  // convert from 10 mv per degree with 500mV offset
  // to degrees ((voltage - 500mV) * 100)
  float tempC = (voltage - 0.5) * 100;
  return tempC;
}
///////////////////////////////////////////////////////////
float getTemperatureC1()
{
  reading = analogRead(kPinTemp1);
  voltage = (reading * 5.0) / 1023;
  // convert from 10 mv per degree with 500mV offset
  // to degrees ((voltage - 500mV) * 100)
  float tempC = (voltage - 0.5) * 100;
  return tempC;
}
///////////////////////////////////////////////////////////
float convertToF(float temperatureC)
{
  float tempF = (temperatureC * 9.0 / 5.0) + 32.0;
  return tempF;
}
///////////////////////////////////////////////////////////
