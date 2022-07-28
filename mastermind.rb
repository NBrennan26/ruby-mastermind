# frozen_string_literal: true

require_relative 'game_classes'
require_relative 'game_text'

# Main Class with most game-driving logic
class Game
  include GameClasses
  include GameText

  attr_reader :players, :p1_role

  def initialize
    prompt_player_role
    @p1_role = gets.chomp
    prompt_player_two_class
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

# Play commands
game = Game.new
game.create_roles
game.reveal_players

game.players[:breaker].test_breaker
game.players[:maker].test_maker
puts game.players[:maker].create_random_sequence
p game.players[:maker].create_sequence
