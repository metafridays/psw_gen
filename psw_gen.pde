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
  boolean alow = checkbox1.isSelected();
  boolean ahigh = checkbox2.isSelected();
  boolean nums = checkbox3.isSelected();
  boolean syms = checkbox4.isSelected();
  char[] alphabetlow = { 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z' };
  char[] alphabethigh = { 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' };
  char[] numbers = { '1','2','3','4','5','6','7','8','9','0' };
  char[] symbols = { '!','"',';','%',':','?','*','(',')','_','+','=','-','~','/','\\','<','>',',','.','[',']','{','}' };
  char[] pswd = new char[l];
    
  // Filling pswd string
  for (int i = 0; i < l; i++) {
    char[] t = new char[0];
    if (alow) t = append(t, alphabetlow[int(random(0, alphabetlow.length) - 0.1)]);
    if (ahigh) t = append(t, alphabethigh[int(random(0, alphabethigh.length) - 0.1)]);
    if (nums) t = append(t, numbers[int(random(0, numbers.length) - 0.1)]);
    if (syms) t = append(t, symbols[int(random(0, symbols.length) - 0.1)]);
    pswd[i] = t[int(random(0, t.length - 0.1))];
  }

   return new String(pswd);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
