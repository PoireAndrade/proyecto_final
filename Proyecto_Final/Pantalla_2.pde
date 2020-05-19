void pantalla2(){
  
  //Fondo
  background(105, 11, 87);
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
  text("Selecciona segun la letra ",450,70);
 
  textFont(fontP1); 
  textAlign(CENTER,TOP);
  textSize(40);
  text("a",150,280);
  text("s",450,280);
  text("d",750,280);
  text("f",300,460);
  text("g",600,460);
  
  pushMatrix();
  scale(s1);
  translate(125,160);
  sopaM();
  popMatrix();
  s1=.70;
  
  pushMatrix();
  scale(s2);
  translate(560,155);
  lata();
  popMatrix();
  s2=.72;
  
  pushMatrix();
  scale(s3);
  translate(1620,430);
  plato();
  popMatrix();
  s3=.40;
  
  pushMatrix();
  scale(s4);
  translate(405,480);
  vaso();
  popMatrix();
  s4=.60;
  
  pushMatrix();
  scale(s5);
  translate(1400,900);
  colilla();
  popMatrix();
  s5=.40;

  select1();
}  

void select1(){
  if (P==2){
    
    if (keyPressed){
      
      if(key=='a'){
        //sopaM
        J1 = 1;
        vida1 =50;
        ataque11 = random(3);
        ataque12 = random(2);
      }
      if(key=='s'){
       //lata 
        J1 = 2;
        vida1 =40;
        ataque11 = random(4);
        ataque12 = random(3);
      }
      if(key=='d'){
        //plato
        J1 = 3;
        vida1 =45;
        ataque11 = random(3);
        ataque12 = random(2);
      }
      if(key=='f'){
        //vaso
        J1 = 4;
        vida1 =45;
        ataque11 = random(3);
        ataque12 = random(2);
      }
      if(key=='g'){
        //colilla
        J1 = 5;
        vida1 =50;
        ataque11 = random(2);
        ataque12 = random(3);
      }
    }
  }
}
