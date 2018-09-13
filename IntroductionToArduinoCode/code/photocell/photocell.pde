const int kPin_Photocell = A0;

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  int value = analogRead(kPin_Photocell);
  
  Serial.print("Analog Reading = ");
  Serial.print(value);
  if(value < 200){
    Serial.println(" - Dark");
  }else if(value < 400){
    Serial.println(" - Dim");
  }
  else if(value < 600){
    Serial.println(" - Light");
  }
  else if(value < 800){
    Serial.println(" - Bright");
  }
  else{
    Serial.println(" - Very Bright");
  }
  delay(1000);  
}
