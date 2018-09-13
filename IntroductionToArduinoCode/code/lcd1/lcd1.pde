#include <PCD8544.h>

const int kPin_CLK = 5;
const int kPin_DIN = 6;
const int kPin_DC = 7;
const int kPin_RESET = 8;

PCD8544 lcd(kPin_CLK, kPin_DIN, kPin_DC, kPin_RESET);

void setup()
{
  lcd.init();
  lcd.setCursor(0,0);
  lcd.print("Hello, World!");
}

void loop()
{
  lcd.setCursor(0,1);
  lcd.print(millis());
}
