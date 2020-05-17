void pantalla5(){

  textFont(fontP1);
  textAlign(CENTER,CENTER);
  textSize(80);
  fill(0);
  text("GANADOR",450,50);
  
  textFont(fontP2);  
  textAlign(CENTER,CENTER);
  textSize(50);
  fill(0);
  text("PELEADOR ",450,200);
  
  
 
  if(vida2<=0){
    textAlign(CENTER,CENTER);
    fill(0); 
    textFont(fontP1); 
    text("1", 450,300);
    textSize(100);
    if(tl<=55){
      tl+=5;
    }

  //Peleador 1
  if(J1==1){
  pushMatrix();
  translate(95,100);
  sopaM();
  popMatrix();
  }
  
  if(J1==2){
  pushMatrix();
  translate(130,100);
  lata();
  popMatrix();
  }
  
  if(J1==3){
  pushMatrix();
  translate(-190,100);
  plato();
  popMatrix();
  }
  
  if(J1==4){
  pushMatrix();
  translate(105,100);
  vaso();
  popMatrix();
  }
  
  if(J1==5){
  pushMatrix();
  translate(85,100);
  colilla();
  popMatrix();
  }
  }
  
  if(vida1<=0){
    textAlign(CENTER,CENTER);
    fill(0); 
    textFont(fontP1); 
    text("2", 450,300);
    textSize(100);
    if(tl<=55){
      tl+=5;
    }
      
  //Peleador 2
  if(J2==6){
  pushMatrix();
  translate(610,100);
  sopaM2();
  popMatrix();
  }
  if(J2==7){
  pushMatrix();
  translate(630,100);
  lata2();
  popMatrix();
  }
  if(J2==8){
  pushMatrix();
  translate(610,100);
  plato2();
  popMatrix();
  }
  if(J2==9){
  pushMatrix();
  translate(610,100);
  vaso2();
  popMatrix();
  }
  if(J2==10){
  pushMatrix();
  translate(600,100);
  colilla2();
  popMatrix();
  }
  }

  textFont(fontP2);  
  textAlign(CENTER,CENTER);
  textSize(20);
  fill(0);
  text("Pulsa Espacio para volver a jugar",450,400);
  
  if (keyPressed && key==' '){        //P=1,J1,J2,turno=0; float ataque1,ataque2,vida1,vida2;
    J1=0;
    J2=0;
    ataque1=0;
    ataque2=0;
    vida1=0;
    vida2=0;
    P=1;
    x=0;
    y1=900;
    tl=0;
  }
  fill(255,10);
  rect(0,0,width,height);
}
