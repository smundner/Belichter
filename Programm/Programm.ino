#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <avr/pgmspace.h>
#include <TimerOne.h>


LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE); // Set the LCD I2C address

const char sekunde[] PROGMEM = "Sekunden";

unsigned long debounce_time, start_time, press_time;
uint8_t timer = 120;
uint8_t s_temp = 70;
uint8_t mod = 1;
uint8_t mod_lock = 0;
volatile int8_t inc_val = 0;
volatile uint8_t inc_in_old;
volatile int8_t inc_count;

void modus(uint8_t mod) {
  lcd.clear();
  lcd.home();
  switch (mod) {
    case 1:
      lcd.print(F("Belichten"));
      break;
    case 2:
      lcd.print(F("Aetzen"));
      break;
  }
  lcd.setCursor(0, 1);
}

void setTime(uint8_t sec) {
  char pstring[17];
  sprintf(pstring, "%03i ", sec);
  lcd.setCursor(0, 1);
  lcd.print(pstring);
  strcpy_P(pstring, (char*)sekunde);
  lcd.print(pstring);
}

void setTemperatur(uint8_t sollTemperatur, uint8_t istTemperatur) {
  char pstring[17];
  sprintf(pstring, "%03i C   %03i C", sollTemperatur, istTemperatur);
  lcd.setCursor(0, 1);
  lcd.print(pstring);
}

void incISR() {
  uint8_t inc_in = (digitalRead(A2) << 0) | (digitalRead(A3) << 1);
  if (inc_in != inc_in_old) {
    switch (inc_in_old) {
      case 0:
        if (inc_in == 1)inc_val += 1;
        if (inc_in == 2)inc_val += -1;
        break;
      case 1:
        if (inc_in == 3)inc_val += 1;
        if (inc_in == 0)inc_val += -1;
        break;
      case 2:
        if (inc_in == 0)inc_val += 1;
        if (inc_in == 3)inc_val += -1;
        break;
      case 3:
        if (inc_in == 2)inc_val += 1;
        if (inc_in == 1)inc_val += -1;
        break;
    }

  }
  inc_in_old = inc_in;
}

void setup()
{


  lcd.begin(16, 2);              // initialize the lcd


  lcd.home ();
  modus(mod);
  setTime(timer);
  lcd.setCursor(0, 1);
  //set output
  pinMode(A0, OUTPUT);
  //set input
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  //set pullup
  digitalWrite(A1, HIGH); //enter
  digitalWrite(A2, HIGH); //a
  digitalWrite(A3, HIGH); //b
  inc_in_old = (digitalRead(A2) << 0) | (digitalRead(A3) << 1);
  Timer1.initialize(1000); // set a timer of length 100000 microseconds (or 0.1 sec - or 10Hz => the led will blink 5 times, 5 cycles of on-and-off, per second)
  Timer1.attachInterrupt( incISR ); // attach the service routine here
}

void belichter(uint8_t enter) {
  if (inc_val < -3) {
    inc_val = 0;
    timer--;
    setTime(timer);
  }
  if (inc_val > 3) {
    inc_val = 0;
    timer++;
    setTime(timer);
  }
  if (enter && start_time == 0) {
    enter = 0;
    mod_lock = 1;
    digitalWrite(A0, HIGH);
    start_time = millis();
    start_time += (unsigned long)1000 * timer;
  }
  if (start_time < millis() || enter) {
    enter = 0;
    start_time = 0;
    mod_lock = 0;
    digitalWrite(A0, LOW);
    setTime(timer);
  } else if (start_time > millis()) {
    unsigned long delta_time = start_time - millis();
    delta_time /= 1000;
    setTime(delta_time);
  }
}
void aetzen(uint8_t enter) {
  if (inc_val < -3) {
    inc_val = 0;
    s_temp--;
    setTemperatur(s_temp, 0);
  }
  if (inc_val > 3) {
    inc_val = 0;
    s_temp++;
    setTemperatur(s_temp, 0);
  }
  if(enter){
    mod_lock=1;
    //switch on
    }
  if(mod_lock==1 && enter){
    mod_lock=0;
    //switch off
    }
  if(mod_lock){
    //control
    }
}

void loop()
{
  uint8_t taster;
  static uint8_t taster_old = 0;
  int8_t enter = 0;

  if (debounce_time + 20 < millis()) {
    debounce_time = millis();
    taster = digitalRead(A1) ^ 1;
    if (taster != taster_old) {
      if (taster == 0)enter = 1;
    }
    if (taster == 0)press_time = 0;
    if (press_time == 0 && taster)press_time = 1000 + millis();
    if (taster && press_time < millis() && mod_lock == 0) {
      if (++mod > 2)mod = 1;
      modus(mod);
      press_time = 0;
      while (digitalRead(A1) ^ 1);
      taster = 0;
      taster_old = 0;
    }
    taster_old = taster;
  }

  switch (mod) {
    case 1:
      belichter(enter);
      break;
    case 2:
      aetzen(enter);
      break;
  }
}
