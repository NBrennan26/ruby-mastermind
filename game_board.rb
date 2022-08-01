# frozen_string_literal: true

# Game Board Display Module
module GameBoard
  def display_board(guesses, clues)
    placeholder = '             ::             '
    puts <<-HEREDOC

          GUESS            CLUE
      #{guesses[0]} :: #{clues[0]}
      #{guesses[1] ? guesses[1] :: clues[1] : placeholder}
      #{guesses[2] ? guesses[2] :: clues[2] : placeholder}
      #{guesses[3] ? guesses[3] :: clues[3] : placeholder}
      #{guesses[4] ? guesses[4] :: clues[4] : placeholder}
      #{guesses[5] ? guesses[5] :: clues[5] : placeholder}
      #{guesses[6] ? guesses[6] :: clues[6] : placeholder}
      #{guesses[7] ? guesses[7] :: clues[7] : placeholder}
      #{guesses[8] ? guesses[8] :: clues[8] : placeholder}
      #{guesses[9] ? guesses[9] :: clues[9] : placeholder}
      #{guesses[10] ? guesses[10] :: clues[10] : placeholder}
      #{guesses[11] ? guesses[11] :: clues[11] : placeholder}

    HEREDOC
  end
end
