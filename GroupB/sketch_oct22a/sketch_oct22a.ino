int ranges[] = {0, 127, 128, 255, 256, 383, 384, 511, 512, 639, 640, 767, 768, 895, 896, 1023};

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
    if (value >= ranges[i*2] && value <= ranges[(i*2)+1]) {
      digitalWrite(i+2, HIGH);
      delay(50);
    }
  }
}
