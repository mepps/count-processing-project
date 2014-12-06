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

int pageCount = 1;
int y = 100;
int likeCount = 0;

// The statements in the setup() function 
// execute once when the program begins
void setup() {
  if (frame != null) {
    frame.setResizable(true);
  }
  size(1060, 640);  // Size must be the first statement
  stroke(255);     // Set line drawing color to white
  frameRate(30);
}

void draw(){
    PFont font;
    font = loadFont("LiGothicMed-48.vlw");
    textFont(font, 32);
    background(255);
    String pageCountS = Integer.toString(pageCount);
    String likeCountS = Integer.toString(likeCount);
    int max = 10000000;
    String maxString = Integer.toString(max);
    fill(172);
    textSize(200); 
    if (pageCount < max){
      stroke(#5CDEFC);
      strokeWeight(5);
      line(10, 330, pageCount*2 + 10, 330);
      text(pageCountS, 580, 320);
      int random = (int)(Math.random() * 2000 + 33);
      println(random);
      try {
        Thread.sleep(random);                 //1000 milliseconds is one second.
      } catch(InterruptedException ex) {
        Thread.currentThread().interrupt();
      }
      pageCount++;
    }
    else{
      text(pageCountS, 580, 320);
    }
  }
