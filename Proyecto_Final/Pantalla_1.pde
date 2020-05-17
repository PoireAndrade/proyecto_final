void pantalla1(){

  //Fondo
  background(31, 2, 36);
  int y = 0;
  noStroke();
  for (int i = 0; i <= 255; i += 25) {
  fill(2, 46, 104, i);
  rect(0, y, width, 46);
  y += 46;
  }
    
  textFont(fontP1); 
  textAlign(CENTER, BOTTOM);
  textSize(90);
  fill(255);
    text("JUEGO DE \n BASURA",x,300);
  if(x<=440){
    x=x+7;
  }
  
  textFont(fontP2);
  fill(cf);
  textSize(tf);
  text("Selecciona a tus personajes",450,y1);
  if(y1>=380){
    y1=y1-6;
  }

 
  if(mouseX>378 && mouseX<478 && mouseY>330 && mouseY<380){
    tf=40;
    cf=255;
  }
    else{
      tf=30;
      cf=200;
    }
  }
