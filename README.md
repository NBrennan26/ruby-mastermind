# Mastermind

[Check it Out](https://replit.com/@NBrennan26/RubyMastermind)

Mastermind Game created in Ruby

## Instructions

This is a two-player game. One player is the CODEMAKER and the other is the CODEBREAKER. 

The Codemaker begins the game by creating a pattern of four numbers. Numbers can be reused, and they can be placed in any order. Blanks are not allowed. 
  - Examples: 1066, 4444, 8572, etc.

The Codebreaker's job is to determine the code in the correct order, within 12 turns. If they successfully guess the correct code, they win. If by the end of their 12th turn they have not found the correct combination, they lose and the Codemaker wins. 

After each of the Codebreaker's turns, the Codemaker provides feedback based on how close the Codebreaker's guess was. There are three potential clues that the Codemaker can provide
  - Correct value in the correct position
  - Correct value in the incorrect position
  - Incorrect value in the incorrect position (blank feedback)
The catch is that the Codemaker's feedback isn't directed at any one position in particular, so it is up to the Codebreaker to determine which clue applies to which value. 

After the Codemaker provides their feedback, the Codebreaker guesses again. Gameplay continues until the Codebreaker guesses the correct code, or they use all 12 turns without guessing correctly. 

## Built With

- Ruby

## Future Plans

- Improve computer logic as codebreaker

## Acknowledgments

- **The Odin Project** - _General Guidance & Project inspiration_ - [The Odin Project](https://www.theodinproject.com/)