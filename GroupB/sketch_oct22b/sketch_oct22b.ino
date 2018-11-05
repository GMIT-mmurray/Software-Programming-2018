int ranges[] = {-1,127,255,383,511,639,767,895,1023};

void setup() {
  // put your setup code here, to run once:

  for (int i = 2; i < 10; i++) {
    pinMode(i, OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  for (int i = 2; i < 10; i++) {
    digitalWrite(i, LOW);
  }
  int value = analogRead(A0);

  for (int i = 0; i < 8; i++) {
    if (value >= ranges[i]+1 && value <= ranges[i+1]) {
      digitalWrite(i+2, HIGH);
      delay(50);
      break;
    }
  }
}
