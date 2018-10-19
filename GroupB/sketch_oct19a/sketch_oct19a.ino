// Function Prototypes
float getTemperatureC();
float getTemperatureC1();
float convertToF(float temperatureC);

const int kPinTemp = A0;
const int kPinTemp1 = A1;
const int Switch = 2;
int reading;

void setup()
{
  Serial.begin(9600);
  pinMode (Switch, INPUT);
}

void loop()
{
  float temperatureC;
  if (digitalRead(Switch) == 0) {
    temperatureC = getTemperatureC();
  } else {
    temperatureC = getTemperatureC1();
  }
  Serial.print(temperatureC);
  Serial.print(" degrees C  ");
  // now convert to Fahrenheit
  float temperatureF = convertToF(temperatureC);
  Serial.print(temperatureF);
  Serial.println(" degrees F");

  delay(500);
}






