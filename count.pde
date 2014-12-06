//import fullscreen.*; 
//
//FullScreen fs; 
//
//void setup(){
//  // set size to 640x480
//  size(640, 480);
//  
//  // 5 fps
//  frameRate(5);
//
//  // Create the fullscreen object
//  fs = new FullScreen(this); 
//  
//  // enter fullscreen mode
//  fs.enter(); 
//}

int a = 1;
int y = 100;

// The statements in the setup() function 
// execute once when the program begins
void setup() {
  size(1060, 640);  // Size must be the first statement
  stroke(255);     // Set line drawing color to white
  frameRate(30);
}

void draw(){
    PFont font;
    font = loadFont("LiGothicMed-48.vlw");
    textFont(font, 32);
    background(255);
    String n = Integer.toString(a);
    int max = 10000000;
    String maxString = Integer.toString(max);
    println(max);
    if (a < max){
      fill(172);
      textSize(400); 
      text(n, 530, 320);
      int random = (int)(Math.random() * 2000 + 33);
      println(random);
      try {
        Thread.sleep(random);                 //1000 milliseconds is one second.
      } catch(InterruptedException ex) {
        Thread.currentThread().interrupt();
      }
      a++;
    }
    text(n, 530, 320);
  }
