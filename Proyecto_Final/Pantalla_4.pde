void pantalla4(){

  //Fondo
  background(184, 102, 10);
  int y = 0;
  noStroke();
  for (int i = 0; i <= 255; i += 25) {
  fill(2, 46, 104, i);
  rect(0, y, width, 46);
  y += 46;
  }
  
  textFont(fontP1);  
  textAlign(CENTER,CENTER);
  textSize(100);
  fill(176,155,0);
  text("VS",450,250);

  
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
  
  //Pelea. Turno 0=J1
  if(turno==0 && keyPressed){
    if (key=='c'){
      vida2 = vida2 - ataque1;
      turno=1;
    }

  }
  
  if(turno==1 && keyPressed){
    if (key=='m'){
      vida1 = vida1 - ataque2;
      turno=0;
    }

  }
  
  //Mostrar Vida
 
  textAlign(CENTER,CENTER);
  textFont(fontP1);  
  textSize(25);
  fill(50,50,50);
  text("\nATAQUE CON: c",200,20);
  text("\nATAQUE CON: m",680,20);

  textFont(fontP1);  
  textAlign(CENTER,CENTER);
  fill(249,177,47);
  textSize(50);
  text(vida1,180,400);
  text(vida2,680,400);  
  
  if(vida1<=0 || vida2<=0){
    P=5;
  }
}
