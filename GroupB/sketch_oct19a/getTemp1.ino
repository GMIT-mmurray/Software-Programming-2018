float getTemperatureC1()
{
  reading = analogRead(kPinTemp1);

  float voltage = (reading * 5.0) / 1023;
  // convert from 10 mv per degree with 500mV offset
  // to degrees ((voltage - 500mV) * 100)
  float tempC = (voltage - 0.5) * 100;
  return tempC;
}
