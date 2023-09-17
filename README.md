# Project 00 For NeXT CS
### Class Period: 4
### Name0: Qing Yi Chen
### Name1: Branton Ling
---


Your mission is to recreate one of these three games that involve working with strings:
- [Wordle](https://wordplay.com/new)
- [Spelling Bee](https://spellingbeegame.org)
- [Type Racer](https://play.typeracer.com)

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

All projects will require the following:
- A visual interface representative of the game. The entirety of the game should run in a window, not via the Processing console.
- Reading in text from a plain text file.
  - I will provide useful text files for the various games.
- The ability for users to start a new game without having to restart the program (either resetting after completing a round of the game, or allowing users to reset in the middle of a current game).
- Allowing text input via the keyboard.
- Some form of score/point system that is maintained while the program is running. (It does not need to keep track of score after the fact).

Wordle Specific Requirements:
- Gameplay should follow Wordle rules. The coloring of the squares should work the same way it does for Wordle (play a few rounds to understand th specifics surrounding duplicate letters).

Spelling Bee specific requirements:
- Users should be able to see the words they have already entered.

Type Racer specific requirements.
- There should be a visual indication of how are along the user is (similar to the cars in type racer).
- This should only be a 1-player game, even if you add other features.


---

## Phase 0: Game Selection, Analysis & Plan

#### Selected Game: Wordle

### Rules
What are the core rules of your game?

* There is a word that is already determined from the beginning and the player tries to guess the 5 letter word in at most 6 tries. For every word that is entered, the game highlights different letters to indicate different things. Green means the letter is in the word and in the right place, yellow means the letter is in the word but not in the right place, and grey means the letter is not in the word at all.

### Necessary Features
What are the core features that your game should have? These should be things that __must__ be implemented in order to make the game playable, not extra features that could be added to make the game more fun to play.

* Visual interface with spaces for 6 five-letter words

### Extra Features
What are some features that are not essential to gameplay, but you would like to see (provided you have time after completing the necessary features.

* Wordle solver
* Confetti for winners ONLY
* Message of disappointment for the LOSERS

#### Interface
What will your game look like?

* The New York Times style of Wordle 

### Controls
How will your game be controlled?

Keyboard Controls: Press letters to input letters. Enter to submit word. Space to reset game (and the word). Backspace to delete letter.


Mouse Controls: No mouse (maybe easter egg?????)



### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes.

Tile
- Instance variables:
  - Color
  - Character
  - Position
- METHODS
  - setColor
  - setChar
  - display (display tile and where player is typing)

Player
- Instance variables:
  - currentPos
- METHODS
  - setPos
