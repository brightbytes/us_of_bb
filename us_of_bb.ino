#include <Adafruit_NeoPixel.h>
#include "State.h"

/*****************************************************************************
* Patriotic.ino
*
*
* Copyright 2016 Chris O'Halloran
* This program is distributed under the Artistic License 2.0, a copy of which
* is included in the file LICENSE.txt along with this library.
****************************************************************************/

// BrightBytes Color Scheme
RGB bb_blue = { 0, 196, 223 };
RGB bb_green = { 0, 204, 153 };
RGB bb_yellow = { 225, 170, 23 };
RGB bb_red = { 245, 110, 143 };
RGB bb_gray = { 145, 149, 150 };


//Uncomment the below line to use TCL instead of WS2811
//#define TCLENABLE 1

//Uncomment these two lines to set hard coded pauses
//#define DELAYON 0
//#define DELAYOFF 0 


// This assigns 100 LEDs to the strand.
#define LEDS 100

#ifdef TCLENABLE
  #include <SPI.h>
  #include <TCL.h>
#else
  #include <Adafruit_NeoPixel.h>
  #define PIN 11
  Adafruit_NeoPixel pixels = Adafruit_NeoPixel(LEDS, PIN, NEO_GRB + NEO_KHZ800);
#endif

#define TCL_POT1 A0
#define TCL_POT2 A1
#define TCL_POT3 A2
#define TCL_POT4 A3
#define TCL_MOMENTARY1 4
#define TCL_MOMENTARY2 5
#define TCL_SWITCH1 6
#define TCL_SWITCH2 7


// Generally, you don't fiddle with these bits.  Please.
/* Current values for the pixels are stored in the following three arrays */
byte red_values[LEDS];
byte green_values[LEDS];
byte blue_values[LEDS];

// Set this once, so we don't have to do math all over the place.  :)
const int TOPLED = LEDS -1; // This is th0 top of the LED array, since the first LED is 0

// Global storage for the state of the momentary switches.  
// This is to correct for a manufacturing issue
int MOMENTARY1_Initial_State;
int MOMENTARY2_Initial_State;

void setup() {
  Serial.begin(9600); // Start serial communication at 9600 baud

#ifdef TCLENABLE
  TCL.begin(); // Begin protocol for communicating with the TCL strand
#else
  pixels.begin();
#endif

  pinMode(TCL_MOMENTARY1, INPUT);
  pinMode(TCL_MOMENTARY2, INPUT);
  pinMode(TCL_SWITCH1, INPUT);
  pinMode(TCL_SWITCH2, INPUT);
  
  digitalWrite(TCL_MOMENTARY1, HIGH);
  digitalWrite(TCL_MOMENTARY2, HIGH);
  digitalWrite(TCL_SWITCH1, HIGH);
  digitalWrite(TCL_SWITCH2, HIGH);

  MOMENTARY1_Initial_State = digitalRead(TCL_MOMENTARY1);
  MOMENTARY2_Initial_State = digitalRead(TCL_MOMENTARY2);


  /* Start by initializing all pixels to OFF */
  for(int i=0;i<LEDS;i++) {
    red_values[i]=0;
    green_values[i]=0;
    blue_values[i]=0;
  }

  update_strand(); // Send the black pixels to the strand to turn off all LEDs.
  randomSeed(analogRead(0));
}

int percent = 20;
State al = State(bb_blue, percent, 10);
State ar = State(bb_green, percent, 10);
State ca = State(bb_yellow, percent, 10);
State org = State(bb_red, percent, 10);
State mi = State(bb_gray, percent, 10);

State states[5] = {al, ar, ca, org, mi};

void loop() {  
  for(int i=0;i<5;i++){
    for(int j=0;j<states[i].getLength();j++){
      int index = (i * 10) + j;
      red_values[index] = states[i].getRed();
      green_values[index] = states[i].getGreen();
      blue_values[index] = states[i].getBlue();      
    }
  }
  update_strand();
#ifdef DELAYON
  delay(DELAYON);
#else
  delay((int)map(analogRead(TCL_POT4), 0, 1023, 0, 500));
#endif

  // Do we go dark?
#ifdef DELAYOFF
  DARKDELAY = DELAYON;
#else
  int DARKDELAY = (int)map(analogRead(TCL_POT3), 0, 1023, 0, 250);
#endif

  if (0 != DARKDELAY) {
    for(int i=0;i<LEDS;i++){
      red_values[i] = 0;
      green_values[i] = 0;
      blue_values[i] = 0;
    }
    update_strand();
    delay(DARKDELAY);
  }
  
  CheckForButtonOne();
}


void update_strand() {

#ifdef TCLENABLE
  TCL.sendEmptyFrame();
  for(int i=0;i<LEDS;i++) {
    TCL.sendColor(red_values[i],green_values[i],blue_values[i]);
  }
  TCL.sendEmptyFrame();
#else
  for(int i=0;i<LEDS;i++){
    pixels.setPixelColor(i, pixels.Color(red_values[i],green_values[i],blue_values[i])); // Moderately bright green color.
  }
  pixels.show(); // This sends the updated pixel color to the hardware.
#endif
  
  
}

void CheckForButtonOne() {
  if (digitalRead(TCL_MOMENTARY1) != MOMENTARY1_Initial_State) {
    while (digitalRead(TCL_MOMENTARY1) != MOMENTARY1_Initial_State) { 
    }
    Serial.print(F("Delay on="));
    Serial.println((int)map(analogRead(TCL_POT4), 0, 1023, 0, 500));
    Serial.print(F("Delay off="));
    Serial.println((int)map(analogRead(TCL_POT3), 0, 1023, 0, 250));
    Serial.println(F(" "));

  }
}
