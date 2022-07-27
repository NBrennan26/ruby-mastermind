# frozen_string_literal: true

# Main Class with most game-driving logic
class Game
  def initialize
    # Initiate Code
  end
end

# Codemaker Module
module Codemaker
  def create_sequence
    # create four-number code
  end

  def test_maker
    puts 'Maker included'
  end
end

# Codebreaker Module
module Codebreaker
  def guess_code
    # gets input from user (or random for AI?)
  end

  def test_breaker
    puts 'Breaker included'
  end
end

# Player Superclass
class Player
  attr_reader :role

  def initialize
    puts 'Would you like to play as the CODEMAKER or the CODEBREAKER?'
    puts "press 'm' for CODEMAKER or 'b' for CODEBREAKER"
    @role = gets.chomp
    puts @role
  end

  @role == 'm' ? (include Codemaker) : (include Codebreaker)

  # if @role == 'b'
  #   include Codebreaker
  # else
  #   include Codemaker
  # end
end

# Human Player Subclass
class HumanPlayer < Player; end

# Computer Player Subclass
class ComputerPlayer < Player; end

# Play commands
human = HumanPlayer.new
com = ComputerPlayer.new

puts "Human Role: #{human.role}"
puts "Computer Role: #{com.role}"

human.test_breaker
com.test_breaker
com.test_maker
