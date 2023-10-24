Bacteria[] tomatoes;
 void setup(){
   size(800,800);
   tomatoes = new Bacteria[50];
   for(int i = 0; i < tomatoes.length; i++){
    tomatoes[i] = new Bacteria(400, 400); 
   }
 }
   void draw(){
     background(#DBFFFF);
     for(int i = 0; i < tomatoes.length; i++){
        tomatoes[i].show();
        tomatoes[i].move();
     }
   }
   
class Bacteria {
  int myX, myY;
  Bacteria(int x, int y){
      myX = x;
      myY = y;
  }
   
void move(){
    if(mouseX>myX)
         myX +=(int)(Math.random()*9);
       else 
         myX += (int)(Math.random()*9)-8;

       if(mouseY>myY)
         myY +=(int)(Math.random()*9);
       else 
         myY +=(int)(Math.random()*9)-8;


   }
  void show(){
  fill(102, 204, 102);
  ellipse(myX-49, myY-75, 71, 72);
  ellipse(myX+46, myY-75, 71, 72);
  fill(102, 204, 102);
  ellipse(myX, myY, 200, 150); //250, 180
  fill(#249328);
  strokeWeight(0);
  ellipse(myX-1, myY-57, 30, 20);
  ellipse(myX-28, myY-46, 20, 15);
  ellipse(myX+28, myY-49, 15, 10);
  strokeWeight(2);
    fill(#FCF7F7);
  ellipse(myX-53, myY-80, 50, 50);
  ellipse(myX+49, myY-80, 50, 50);
  fill(0, 0, 0);
  ellipse(myX-54, myY-82, 35, 35);
  ellipse(myX+51, myY-82, 35, 35);
  fill(#FFFFFF);
  ellipse(myX-62, myY-90, 8, 8);
  ellipse(myX+61, myY-87, 8, 8);
    fill(0, 0, 0);
  line(myX-57, myY+33, myX+50, myY+37);
  ellipse(myX-19, myY+8, 5, 5);
  ellipse(myX+17, myY+8, 5, 5);


     fill(255,0,0);
     ellipse(mouseX, mouseY, 58, 50);
     fill(0,255,0);
     rect(mouseX-7, mouseY-25, 15, 9);
  }
}
