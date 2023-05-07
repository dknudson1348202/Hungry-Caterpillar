import processing.serial.*;

Serial myPort;  // Create an object from Serial 
String val;  // Data received from the serial port
     
void serialEvent(){
  String portname = Serial.list()[0]; // The first port in the serial list on my mac is Serial.list()[0].
  myPort = new Serial(this, "/dev/cu.usbmodem14101", 9600); //
}

void display(){
  if (myPort.available() > 0){  // If data is available,
  val = myPort.readStringUntil('\n');  // read it and store it in val
  } 
println(val); //print it out in the console
}

  
