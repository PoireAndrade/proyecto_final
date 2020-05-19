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
  scale(s1);
  sopaM();
  popMatrix();
  }
  
  if(J1==2){
  pushMatrix();
  translate(130,100);
  scale(s1);
  lata();
  popMatrix();
  }
  
  if(J1==3){
  pushMatrix();
  translate(-190,100);
  scale(s1);
  plato();
  popMatrix();
  }
  
  if(J1==4){
  pushMatrix();
  translate(105,100);
  scale(s1);
  vaso();
  popMatrix();
  }
  
  if(J1==5){
  pushMatrix();
  translate(85,100);
  scale(s1);
  colilla();
  popMatrix();
  }
   
  //Peleador 2
  if(J2==6){
  pushMatrix();
  translate(610,100);
  scale(s2);
  sopaM2();
  popMatrix();
  }
  if(J2==7){
  pushMatrix();
  translate(630,100);
  scale(s2);
  lata2();
  popMatrix();
  }
  if(J2==8){
  pushMatrix();
  translate(610,100);
  scale(s2);
  plato2();
  popMatrix();
  }
  if(J2==9){
  pushMatrix();
  translate(610,100);
  scale(s2);
  vaso2();
  popMatrix();
  }
  if(J2==10){
  pushMatrix();
  translate(600,100);
  scale(s2);
  colilla2();
  popMatrix();
  }
  
  //Pelea. Turno 0=J1
  if(turno==0 && keyPressed){
    if (key=='c'){
      vida2 = vida2 - ataque11;
      turno=1;
      s1=1;
    }
    else{
    s1=1.10;
  }
  if(key=='d'){
    vida2= vida2 - ataque12;
    turno=1;
    s1=1;
    }
  }
   
  if(turno==1 && keyPressed){
    if (key=='m'){
      vida1 = vida1 - ataque21;
      turno=0;
      s2=1;
  }
    else{
    s2=1.10;
  }
  if(key=='k'){
    vida1= vida1 - ataque22;
    turno=0;
    s2=1;
    }
  }
 
  
  
  //Mostrar Vida
 
  textAlign(CENTER,CENTER);
  textFont(fontP1);  
  textSize(25);
  fill(50,50,50);
  text("\nATAQUE PRINCIPAL: c",200,20);
  text("\nATAQUE SECUNDARIO: d",200,45);
  text("\nATAQUE PRINCIPAL: m",680,20);
  text("\nATAQUE SECUNDARIO: k",680,45);

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
