
const int dButton = 12;
const int aButton = 11;
const int leftButton = 10;
const int rightButton = 9;

void setup() { // initialize the buttons' inputs:
 Serial.begin(9600);

  pinMode(leftButton, INPUT);
  pinMode(rightButton, INPUT);
 pinMode(dButton, INPUT);
 pinMode(aButton, INPUT);
 
 }

void loop() {  

  // use the pushbuttons to control the keyboard:
  
  if (digitalRead(leftButton) == HIGH) {
    Serial.println("LEFT:");
    delay(0.005);
  }
  if (digitalRead(rightButton) == HIGH) {
    Serial.println( "Right:");
    delay(0.005);
     }
   if (digitalRead(aButton) == HIGH) {
    Serial.println("a:");
    delay(0.005);
  }
  if (digitalRead(dButton) == HIGH) {
    Serial.println( "d:");
    delay(0.005);
     }
 


}
