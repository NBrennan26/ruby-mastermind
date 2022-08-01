# frozen_string_literal: true

# Game Board Display Module
module GameBoard
  def display_board(guesses, clues)
    placeholder = '           |         '
    board_header
    for i in 0..11
      if guesses[i]
        puts "     #{guesses[i].join}  |  #{clues[i].join(' ')}"
      else
        puts placeholder
      end
    end
    puts ' '
  end

  def board_header
    puts ' '
    puts '     GUESS |  CLUE'
    puts '    ---------------'
  end
end
