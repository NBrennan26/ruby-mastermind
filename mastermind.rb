# frozen_string_literal: true

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

# Main Class with most game-driving logic
class Game
  attr_reader :players, :p1_role

  def initialize
    puts ' '
    puts 'PLAYER ONE, Would you like to play as the CODEMAKER or the CODEBREAKER?'
    puts "Press 'm' for CODEMAKER or 'b' for CODEBREAKER"
    @p1_role = gets.chomp
    puts ' '
    puts 'Would you like to play against another PLAYER, or the COMPUTER?'
    puts "Press 'p' for PLAYER or 'c' for COMPUTER"
    @p2_player = gets.chomp
    @players = {}
  end

  def create_roles
    if @p1_role == 'b'
      player_one = HumanBreaker.new(self, 1)
      @players[:breaker] = player_one
      player_two = @p2_player == 'c' ? ComputerMaker.new(self, 2) : HumanMaker.new(self, 2)
      @players[:maker] = player_two
    else
      player_one = HumanMaker.new(self, 1)
      @players[:maker] = player_one
      player_two = @p2_player == 'c' ? ComputerBreaker.new(self, 2) : HumanBreaker.new(self, 2)
      @players[:breaker] = player_two
    end
  end

  def reveal_players
    p @players
  end
end

# Player Superclass
class Player
  attr_reader :role

  def initialize(game, player_no)
    @game = game
    @player_no = player_no
  end
end

# Human Codebreaker Subclass
class HumanBreaker < Player
  include Codebreaker
end

# Human Codemaker Subclass
class HumanMaker < Player
  include Codemaker
end

# Computer Codebreaker Subclass
class ComputerBreaker < Player
  include Codebreaker
end

# Computer Codemaker Subclass
class ComputerMaker < Player
  include Codemaker
end

# Play commands
game = Game.new
game.create_roles
game.reveal_players

game.players[:breaker].test_breaker
game.players[:maker].test_maker
