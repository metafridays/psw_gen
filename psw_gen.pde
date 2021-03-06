// Need G4P library
import g4p_controls.*;

char[] alphabetlow = { 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z' };
char[] alphabethigh = { 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' };
char[] numbers = { '1','2','3','4','5','6','7','8','9','0' };
char[] symbols = { '!','"',';','%',':','?','*','(',')','_','+','=','-','~','/','\\','<','>',',','.','[',']','{','}' };
int letters;
  
public void setup(){
  G4P.setDisplayFont("Arial", G4P.PLAIN, 16);
  size(500, 300, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  letters = slider1.getValueI();

  
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
  char[] pswd = new char[l];
  boolean flag = false;
  // Filling pswd string
  while (flag == false) {
    for (int i = 0; i < l; i++) {
      char[] t = new char[0];
      if (alow) t = append(t, alphabetlow[int(random(0, alphabetlow.length))]);
      if (ahigh) t = append(t, alphabethigh[int(random(0, alphabethigh.length))]);
      if (nums) t = append(t, numbers[int(random(0, numbers.length))]);
      if (syms) t = append(t, symbols[int(random(0, symbols.length))]);
      pswd[i] = t[int(random(0, float(t.length) / 10.0) * 10.0)];
    }
    flag = checkPswd(alow, ahigh, nums, syms, pswd);
  }
  return new String(pswd);
}

public boolean checkPswd(boolean al, boolean ah, boolean n, boolean s, char[] pswd) {
  boolean flag = false;
  
  for (int i = 0; i < pswd.length; i++ ) {
    if (al && contains(alphabetlow, pswd[i])) flag = true;
  }
  if (flag == true) return flag;
  
  for (int i = 0; i < pswd.length; i++ ) {
    if (ah && contains(alphabethigh, pswd[i])) flag = true;
  }
  if (flag == true) return flag;
  
  for (int i = 0; i < pswd.length; i++ ) {
    if (n && contains(numbers, pswd[i])) flag = true;
  }
  if (flag == true) return flag;
  
  for (int i = 0; i < pswd.length; i++ ) {
    if (s && contains(symbols, pswd[i])) flag = true;
  }
  if (flag == true) return flag;
  return flag;
}

public boolean contains(char[] source, char ch) {
  for (int i = 0; i < source.length; i++) if (source[i] == ch) return true;
  return false;
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
