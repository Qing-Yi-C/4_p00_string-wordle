class Keyboard {
  int xini;
  int xpos;
  int ypos;
  String [] qwerty;

  Keyboard () {
    qwerty = new String[1];
    qwerty [0] = "QWERTYUIOPASDFGHJKLZXCVBNM";
  }

  void display(String g, String y, String gr) {
    textSize(50);
    for (int i = 0; i < qwerty[0].length(); i++) {
      if (i < 10) {
        xini = 30;
        ypos = height - 125;
      } else if ( i < 19) {
        xini = 60;
        ypos = height - 75;
      } else if (i < 26) {
        xini = 110;
        ypos = height - 25;
      }

      if (i < 10) {
        colorLetter(g, y, gr, i);

        if (i == 0) {
          xpos = 0;
        }

        text (qwerty[0].charAt(i), xini + xpos, ypos);
        xpos+= 60;
      } 
      else if ( i < 19) {
        colorLetter(g,y, gr,i);

        if (i == 10) {
          xpos = 0;
        }

        text (qwerty[0].charAt(i), xini + xpos, ypos);
        xpos+= 60;
      } else if (i < 26) {
        colorLetter(g,y, gr,i);

        if (i == 19) {
          xpos = 0;
        }

        text (qwerty[0].charAt(i), xini + xpos, ypos);
        xpos += 60;
      }
    }
  }
  
  void colorLetter(String g, String y, String gr, int i) {
    if (g.length() != 0 && g.indexOf(qwerty[0].charAt(i)) != -1) {
      fill (#6BAA65); // green
    } else if (y.length() != 0 && y.indexOf(qwerty[0].charAt(i)) != -1) {
      fill (#C9B457); // yellow
    } else if (gr.length() != 0 && gr.indexOf(qwerty[0].charAt(i)) != -1) {
      fill (0);
    }
    else {
      fill(255);
    }
 

  }
}
