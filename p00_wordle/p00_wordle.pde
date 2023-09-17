int TILE_SIZE = 120;
int OFFSET = TILE_SIZE/12;
Tile grid[][] = new Tile[6][5];
Keyboard quirky = new Keyboard ();
String [] guesses;
String [] answers;
String answer;
boolean playing;
boolean win;
PImage loss;
PImage yippee;
String green;
String yellow;
String gray;
int score;
int playerRow;
int playerCol;

void setup() {
  size(610, 950);
  background(15);
  textAlign(CENTER);
  playing = true;
  win = false;
  loss = loadImage("loss.png");
  loss.loadPixels();
  yippee = loadImage("tbh.jpg");
  yippee.loadPixels();
  score = 100;

  textAlign(CENTER);
  textSize(50);
  text("Score: " + score, width/2, height - 180);

  guesses = loadStrings("guesses.txt");
  answers = loadStrings("answers.txt");

  answer = answers[int(random(answers.length))];

  for (int i=0; i<grid.length; i++) {
    for (int j=0; j<grid[i].length; j++) {
      grid[i][j] = new Tile(j * TILE_SIZE, i * TILE_SIZE);
    }
  }
  handleReset();
  quirky.display(green, yellow, gray);
}

void draw() {
  if (playing == true) {
    for (int i=0; i<grid.length; i++) {
      for (int j=0; j<grid[i].length; j++) {
        textSize(80);
        grid[i][j].display();
      }
    }
    grid[playerRow][playerCol].display();
  } else {
    if (win) {
      for (int i=0; i<grid.length; i++) {
        for (int j=0; j<grid[i].length; j++) {
          textSize(80);
          grid[i][j].display();
        }
      }
      textAlign(CENTER);
      textSize(70);
      fill(0, 255, 0);
      text("YOU WON :DD !!!", width/2, height/2);
      text("Your score: " + score, width/2, height/2 + 100);
      image(yippee, 130, 25, 350, 335);
    } else {
      background(0);
      textAlign(CENTER);
      textSize(33);
      fill(255, 0, 0);
      text("YOU LOST >:( !!! The answer was: " + answer.toUpperCase(), width/2, height/2);
      text("Your score: " + score, width/2, height/2 + 50);
      image(loss, 0, 0);
    }
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    //println(answer);
    background(0);
    if (playerCol == 4) {
      handleSubmit();
    }
    textAlign(CENTER);
    textSize(50);
    text("Score: " + score, width/2, height - 180);
    quirky.display(green, yellow, gray);
    //println(answer);
    //println(Green[0] + " " +  Green[1] + " " +  Green[2] + " " +  Green[3] + " " +  Green[4]);
    //println(Yellow[0] + " " +  Yellow[1] + " " +  Yellow[2] + " " +  Yellow[3] + " " +  Yellow[4]);
  } else if (keyCode == BACKSPACE) {
    handleDelete();
  } else if (key == ' ') {
    handleReset();
    background(0);
    answer = answers[int(random(answers.length))];
    quirky.display(green, yellow, gray);
    score = 100;
    textAlign(CENTER);
    textSize(50);
    text("Score: " + score, width/2, height - 180);
  } else if (keyPressed) {
    handleInsert(key);
  }
}

void handleSubmit() {
  String guess = "";
  int counter = 0;

  for (int i=0; i<grid[i].length; i++) {
    guess += grid[playerRow][i].character;
  }

  if (!isValidWord(guess)) {
    return;
  }

  for (int guess_i = 0; guess_i < 5; guess_i++) {
    if (guess.charAt(guess_i) == answer.charAt(guess_i)) {
      green += Character.toUpperCase(answer.charAt(guess_i));
      grid[playerRow][guess_i].c = 2;
      counter++;
    } else if (answer.indexOf(guess.charAt(guess_i)) != -1) {
      yellow += Character.toUpperCase(answer.charAt(answer.indexOf(guess.charAt(guess_i))));
      grid[playerRow][guess_i].c = 1;
      score -= 1;
    } else {
      gray += Character.toUpperCase(guess.charAt(guess_i));
      score -= 4;
    }
  }

  if (counter == 5) {
    playing = false;
    win = true;
    return;
  }

  if (playerRow == 5) {
    playing = false;
    return;
  }

  playerCol = 0;
  playerRow++;
}

boolean isValidWord(String word) {
  for (int i = 0; i < guesses.length; i++) {
    if (guesses[i].equals(word)) {
      return true;
    }
  }
  return false;
}

void handleDelete() {
  char temp;
  if (playerCol > 0) {
    temp = grid[playerRow][playerCol-1].character;
  } else {
    temp = ' ';
  }
  if (playerCol != 0) { // removes char before player
    grid[playerRow][playerCol-1].character = ' ';
  }
  if (playerCol == 4) { // if at end,
    if (grid[playerRow][playerCol].character != ' ') { // if player at 6th
      grid[playerRow][playerCol-1].character = temp;
    } else {
      playerCol--;
    }
    grid[playerRow][playerCol].character = ' ';
  } else if (playerCol > 0) {
    playerCol--;
  }
}

void handleReset() {
  for (int i=0; i<grid.length; i++) {
    for (int j=0; j<grid[i].length; j++) {
      grid[i][j].c = 0;
      grid[i][j].character = ' ';
    }
  }
  playerRow = 0;
  playerCol = 0;
  green = "";
  yellow = "";
  gray = "";
  playing = true;
  win = false;
}

void handleInsert(char character) {
  if (playerCol <= 5 && grid[playerRow][playerCol].character == ' ' && Character.isLetter(character)) {
    grid[playerRow][playerCol].character = character;
    if (playerCol != 4) {
      playerCol++;
    }
  }
}
