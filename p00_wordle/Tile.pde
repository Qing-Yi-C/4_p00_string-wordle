class Tile {
  int c;
  char character;
  int xpos;
  int ypos;
  boolean player;

  Tile(int xpos, int ypos) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.c = 0;
    this.character = ' ';
    this.player = false;
  }

  void display() {
    switch (c) {
    case 0:
      fill(80); // grey
      break;
    case 1:
      fill(#C9B457); //yellow
      break;
    case 2:
      fill(#6BAA65); // green
      break;
    }

    square(xpos+OFFSET, ypos+OFFSET, TILE_SIZE-OFFSET);
    //text
    fill(255);

    text(Character.toUpperCase(character), xpos + TILE_SIZE/2 + OFFSET/2, ypos + TILE_SIZE*2/3);
  }

  void insert(char character) {
    this.character = character;
  }
}
