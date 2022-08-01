# frozen_string_literal: true

# Text prompts & Game instructions will be stored here
module GameText
  def prompt_player_role
    puts ' '
    puts 'PLAYER ONE, Would you like to play as the CODEMAKER or the CODEBREAKER?'
    puts "Enter 'm' for CODEMAKER or 'b' for CODEBREAKER"
  end

  def prompt_player_two_class
    puts ' '
    puts 'Would you like to play against another PLAYER, or the COMPUTER?'
    puts "Enter 'p' for PLAYER or 'c' for COMPUTER"
  end

  def prompt_play_again
    puts ' '
    puts 'Would you like to play again'
    puts "Enter 'y' for YES or 'n' for NO"
  end

  def display_game_key
    puts ' '
    puts 'X - Correct number, correct location'
    puts 'O - Correct number, incorrect location'
  end
end
