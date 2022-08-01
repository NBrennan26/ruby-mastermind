# frozen_string_literal: true

# Game Board Display Module
module GameBoard
  # def display_board(guesses, clues)
  #   placeholder = '       |      '
  #   puts <<-HEREDOC

  #      GUESS |  CLUE
  #     ---------------
  #      #{guesses[0].join}  |  #{clues[0].join(' ')}
  #     #{guesses[1] ?  " #{guesses[1].join}  |  #{clues[1].join(' ')}" : placeholder}
  #     #{guesses[2] ?  " #{guesses[2].join}  |  #{clues[2].join(' ')}" : placeholder}
  #     #{guesses[3] ?  " #{guesses[3].join}  |  #{clues[3].join(' ')}" : placeholder}
  #     #{guesses[4] ?  " #{guesses[4].join}  |  #{clues[4].join(' ')}" : placeholder}
  #     #{guesses[5] ?  " #{guesses[5].join}  |  #{clues[5].join(' ')}" : placeholder}
  #     #{guesses[6] ?  " #{guesses[6].join}  |  #{clues[6].join(' ')}" : placeholder}
  #     #{guesses[7] ?  " #{guesses[7].join}  |  #{clues[7].join(' ')}" : placeholder}
  #     #{guesses[8] ?  " #{guesses[8].join}  |  #{clues[8].join(' ')}" : placeholder}
  #     #{guesses[9] ?  " #{guesses[9].join}  |  #{clues[9].join(' ')}" : placeholder}
  #     #{guesses[10] ?  " #{guesses[10].join}  |  #{clues[10].join(' ')}" : placeholder}
  #     #{guesses[11] ?  " #{guesses[11].join}  |  #{clues[11].join(' ')}" : placeholder}
  #     #{' '}
  #   HEREDOC
  # end

  def display_board(guesses, clues)
    placeholder = '           |         '
    puts ' '
    puts '     GUESS |  CLUE'
    puts '    ---------------'
    for i in 0..11
      if guesses[i]
        puts "     #{guesses[i].join}  |  #{clues[i].join(' ')}"
      else
        puts placeholder
      end
    end
    puts ' '
  end
end
