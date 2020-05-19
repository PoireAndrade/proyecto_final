void pantalla3(){

  //Fondo
  background(182, 22, 102);
  int y = 0;
  noStroke();
  for (int i = 0; i <= 255; i += 25) {
  fill(2, 46, 104, i);
  rect(0, y, width, 46);
  y += 46;
  }
  
  textFont(fontP2);
  textAlign(CENTER, UP);
  textSize(50);
  fill(255);
  text("¿QUIEN SE QUEDA?",450,40);
  
  textAlign(CENTER,TOP);
  textSize(28);
  fill(255);
  text("Selecciona segun el numero ",450,70);
 
  textFont(fontP1); 
  textAlign(CENTER,TOP);
  textSize(40);
  text("1",150,280);
  text("2",450,280);
  text("3",750,280);
  text("4",300,460);
  text("5",600,460);
  
  pushMatrix();
  scale(s6);
  translate(125,160);
  sopaM2();
  popMatrix();
  s6=.70;
  
  pushMatrix();
  scale(s7);
  translate(560,155);
  lata2();
  popMatrix();
  s7=.72;
  
  pushMatrix();
  scale(s8);
  translate(1620,430);
  plato2();
  popMatrix();
  s8=.40;
  
  pushMatrix();
  scale(s9);
  translate(405,480);
  vaso2();
  popMatrix();
  s9=.60;
  
  pushMatrix();
  scale(s10);
  translate(1400,900);
  colilla2();
  popMatrix();
  s10=.40;
    
  select2();
  
}
void select2(){
  if (P==3){
    
    if (keyPressed){
      if(key=='1'){
        //sopaM
        J2 = 6;
        vida2 = 50;
        ataque2 = random(3);
      }
      if(key=='2'){
       //lata 
        J2 = 7;
        vida2 = 40;
        ataque2 = random(4);
      }
      if(key=='3'){
        //plato
        J2 = 8;
        vida2 = 45;
        ataque2 = random(3);
      }
      if(key=='4'){
        //vaso
        J2 = 9;
        vida2 = 45;
        ataque2 = random(3);
      }
      if(key=='5'){
        //colilla
        J2 = 10;
        vida2 = 50;
        ataque2 = random(2);
      }
    }
  } 
}
