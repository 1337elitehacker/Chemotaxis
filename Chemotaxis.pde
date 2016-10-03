Bacteria []tim;
 void setup()   
 {    size(1000,1000);
 	tim = new Bacteria[400];
 	  for(int i = 0;i<tim.length;i++){
 	  	tim[i] = new Bacteria();
 	  }
 }   
 void draw()   
 {    
 	
 	background(0);
 	for(int i =0; i<tim.length;i++){
 		tim[i].show();
 		tim[i].move();
 	}
 }
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int colorBact;
 	Bacteria(){
 		myX= 200;
 		myY= 200;
 		colorBact = (int) (Math.random()*1)+256;} 
  void move(){
 	myX=myX+(int)(Math.random()*5);
 	myY=myY+(int)(Math.random()*5);
 	if(myX>1000){
 		myX=0;
 	}
 	if(myY>1000){
 		myY=0;
 	}

 }

 void show(){
 	fill(colorBact,colorBact,colorBact);
 	ellipse(myX,myY,20,20);
 }
    }
