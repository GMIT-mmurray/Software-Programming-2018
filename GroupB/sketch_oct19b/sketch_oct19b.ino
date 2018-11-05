// Function Prototypes
float getTemperatureC();
float getTemperatureC1();
float convertToF(float temperatureC);
void function1(String message, float temp);

const int kPinTemp = A0;
const int kPinTemp1 = A1;

int reading;
/////////////////////////////////////////////////////////////////////////////////////////////////
void setup()
{
  Serial.begin(9600);
}
//////////////////////////////////////////////////////////////////////////////////////////////////
void loop()
{
  float temperatureC;
  float temperatureC1;

  temperatureC = getTemperatureC();
  temperatureC1 = getTemperatureC1();
  if (temperatureC > temperatureC1) {
    function1("A0",temperatureC);
  } else if (temperatureC1 > temperatureC) {
    function1("A1",temperatureC1);
  } else if (temperatureC == temperatureC1) {
    function1("A0=A1",temperatureC);
  }
  // now convert to Fahrenheit
  delay(500);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////

void function1(String message, float temp) {
  Serial.print(message );
  Serial.print(" ");
  Serial.print(temp);
  Serial.print(" degrees C  ");
  float temperatureF = convertToF(temp);
  Serial.print(temperatureF);
  Serial.println(" degrees F");
}
////////////////////////////////////////////////////////////////////////////////
float convertToF(float temperatureC)
{
  float tempF = (temperatureC * 9.0 / 5.0) + 32.0;
  return tempF;
}
/////////////////////////////////////////////////////////////////////////////////
float getTemperatureC()
{
  reading = analogRead(kPinTemp);

  float voltage = (reading * 5.0) / 1023;
  // convert from 10 mv per degree with 500mV offset
  // to degrees ((voltage - 500mV) * 100)
  float tempC = (voltage - 0.5) * 100;
  return tempC;
}
/////////////////////////////////////////////////////////////////////////////////
float getTemperatureC1()
{
  reading = analogRead(kPinTemp1);

  float voltage = (reading * 5.0) / 1023;
  // convert from 10 mv per degree with 500mV offset
  // to degrees ((voltage - 500mV) * 100)
  float tempC = (voltage - 0.5) * 100;
  return tempC;
}
///////////////////////////////////////////////////////////////////////////////////



