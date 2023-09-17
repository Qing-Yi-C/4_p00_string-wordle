# Project 00 For NeXT CS
### Class Period: 4
### Name0: Qing Yi Chen
### Name1: Branton Ling
#### Selected Game: Wordle
---

### How To Play
Explain how to play your game. Include any keyboard and/or mouse commands, game objectives, etc.
* The objective is to guess a random 5 letter word in at most 6 tries. If the player can't guess the answer correctly after 6 tries, they lose the game and must restart with a new word to guess
* After entering a real 5 letter word (no gibberish or nonsense words!), press enter to check how correct the player's guess is and move onto the next attempt if the guess is not correct yet. If a letter is highlighted green, then the letter is in the answer word and in the correct position of the word. If the letter is highlighted yellow, then the letter is in the answer word but in the wrong position. If a letter remains grey, then the letter is not in the answer word at all
* The keyboard is there to help the player. Grey letters will be blacked out in the keyboard so the player will know which letters not to use, yellow letters will be highlighted yellow, and green letters will be highlighted green
* The player starts off with a score of 100 points. For every yellow letter they get, the score subtracts 1. For each grey letter, the score subtracts 3. Green letters don't decrease the score at all because they are the most correct. Because the player is bound to lose more points if they use more attempts (their total number of grey or yellow letters increases), the player is incentivized to try guessing the correct word in the least number of attempts for a higher final score
* If the player make a typo or wishes to erase their keyboard input before they press enter, they can delete their input using the backspace key. The player cannot go back and delete previous guesses once they hit enter and move onto the next try. If they wish to reset their guesses and randomly repick another 5 letter word they have to guess, the player can press space bar to restart the game at any time

---

### Features
List all the game features you were able to implement.
* visual interface of the wordle board
* a useful keyboard display with color changing keys according to the correctness of input letters
* screen for winners
* screen for losers
* score counting
* reset game using space bar (resets the word and wipes all previous attempts)
* backspace to delete letter entries
* checks if entered word is an actual word so player can't type gibberish. only moves on if the guess is an actual word

---

### Changes
What changed about your game after the design phase? Separate changes that occurred after the feedback round and changes that occurred during programming.

##### Changes after feedback:
* Reset button to reset game using space bar
* Getting rid of Player class because we can do player positon in the tile class and it's not very clear
* Splitting pos instance variable in the tile class into xpos and ypos
* setColor will be done in driver file instead of tile class
* setChar will also be done in driver file
* insert method in tile class (insert typed characters)

##### Changes during programming:
* made a keyboard class to replace player
* the keys of the keyboard change colors according to the correctness of the input letter (colorLetter method)
* making the feature where only real words can be colorchecked. No gibberish!
* score counter
* instead of player in tile class, have playerRow and playerCol
