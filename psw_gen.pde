// Need G4P library
import g4p_controls.*;

int letters;

public void setup(){
  G4P.setDisplayFont("Arial", G4P.PLAIN, 16);
  size(500, 300, JAVA2D);
  createGUI();
  customGUI();
  textfield1.setText(str(letters));
  // Place your setup code here
  
}

public void draw(){
  background(150);
  textfield1.setTextBold();
  
}

public String generate(int l) {
  // Initial setup
  char[] alphabetlow = { 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z' };
  char[] alphabethigh = { 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' };
  char[] numbers = { '1','2','3','4','5','6','7','8','9','0' };
  char[] symbols = { '!','"',';','%',':','?','*','(',')','_','+','=','-','~','/','\\','<','>',',','.','[',']','{','}' };
  char[] pswd = new char[l];
   
  // Filling pswd string
  for (int i = 0; i < l; i++) {
     switch(int(random(1, 4.9))) {
         case 1 :
           if (checkbox1.isSelected()) pswd[i] = alphabetlow[int(random(0, alphabetlow.length))];
           break;
         case 2 :
           if (checkbox2.isSelected()) pswd[i] = alphabethigh[int(random(0, alphabethigh.length))];
           break;
         case 3 :
           if (checkbox3.isSelected()) pswd[i] = numbers[int(random(0, numbers.length))];
           break;
         case 4 :
           if (checkbox4.isSelected()) pswd[i] = symbols[int(random(0, symbols.length))];
           break;
     } 
  }
   
   
   
 // while (true) {
       
  // }
   
   return new String(pswd);
   
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
