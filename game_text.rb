# frozen_string_literal: true

# Text prompts & Game instructions will be stored here
module GameText
  def prompt_player_role
    puts ' '
    puts 'PLAYER ONE, Would you like to play as the CODEMAKER or the CODEBREAKER?'
    puts "Press 'm' for CODEMAKER or 'b' for CODEBREAKER"
  end

  def prompt_player_two_class
    puts ' '
    puts 'Would you like to play against another PLAYER, or the COMPUTER?'
    puts "Press 'p' for PLAYER or 'c' for COMPUTER"
  end
end
