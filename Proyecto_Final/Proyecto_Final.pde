PFont fontP1; // *********** font1
PFont fontP2; // *********** font1
int x,y1=900; 
int tf=30,cf; 
int tl=0; 

int P=1,J1,J2,turno=0;
float ataque1,ataque2,vida1,vida2;
float s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
int cc; //cambia color de fondo en pantalla 5


class peleador{
  
  int x,y;
  String nombre;
  int ataque,vida;
  int posicion; 
  
  peleador(String nombre, int ataque, int vida, int posicion){
    
    nombre = nombre;
    ataque = ataque;
    vida = vida;
    posicion = posicion;
  }

  void seleccion(){
    switch(posicion){
//--------------------------         
      case 1:
        sopaM();
      break;
      
      case 2:
        lata();
      break;
      
      case 3:
        plato();
      break;
      
      case 4:
        vaso();
      break;
      
      case 5:
        colilla();
      break;
      
//-------------------------- carcasa 2      
      case 6:
        sopaM2();
      break;
      
      case 7:
        lata2();
      break;
      
      case 8:
        plato2();
      break;
      
      case 9:
        vaso2();
      break;
      
      case 10:
        colilla2();
      break;      
    }
  }
}
//-------------------------- carcasa 1    
peleador sopaM;
peleador lata;
peleador plato;
peleador vaso;
peleador colilla;
//-------------------------- carcasa 2    
peleador sopaM2;
peleador lata2;
peleador plato2;
peleador vaso2;
peleador colilla2;


void setup(){
  frameRate(60);
  size(900,500);
  
  fontP1 = loadFont("Castellar-48.vlw"); // *****font l1 *****
  fontP2 = loadFont("DFKaiShu-SB-Estd-BF-48.vlw"); // *****font l2 *****
 
//-------------------------- carcasa 1 
  sopaM = new peleador("sopaM",3,50,1);  
  lata = new peleador("lata",4,40,2);
  plato = new peleador("plato",3,45,3);
  vaso = new peleador("vaso",3,45,4);
  colilla = new peleador("colilla",2,50,5);
//-------------------------- carcasa 2   
  sopaM2 = new peleador("sopaM2",3,50,1);  
  lata2 = new peleador("lata2",4,40,2);
  plato2 = new peleador("plato2",3,45,3);
  vaso2 = new peleador("vaso2",3,45,4);
  colilla2 = new peleador("colilla2",2,50,5);
}

void draw(){
  
  println(mouseX, mouseY);
  
  if(P==1){
    pantalla1();
    if (mousePressed && mouseX>378 && mouseX<478 && mouseY>330 && mouseY<380){
      P=2;
    }
  }
  
  if(P==2){
    pantalla2();
    if(J1!=0){   
      P=3;
    }
  }
   
  if(P==3){
    pantalla3();
    if(J2!=0){   
      P=4;
    }
  }
  
  if(P==4){
    pantalla4();
  }
  
  if(P==5){
    pantalla5();
  }
}
