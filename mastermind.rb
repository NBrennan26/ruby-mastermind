# frozen_string_literal: true

require_relative 'game_classes'
require_relative 'game_text'

# Main Class with most game-driving logic
class Game
  include GameClasses
  include GameText

  attr_reader :players, :p1_role, :secret_code

  def initialize
    prompt_player_role
    @p1_role = gets.chomp
    prompt_player_two_class
    @p2_player = gets.chomp
    @players = {}
  end

  def create_roles
    if @p1_role == 'b'
      @players[:breaker] = HumanBreaker.new(self, 1)
      @players[:maker] = @p2_player == 'c' ? ComputerMaker.new(self, 2) : HumanMaker.new(self, 2)
    else
      @players[:maker] = HumanMaker.new(self, 1)
      @players[:breaker] = @p2_player == 'c' ? ComputerBreaker.new(self, 2) : HumanBreaker.new(self, 2)
    end
  end

  def set_code
    @secret_code = @players[:maker].is_ai ? @players[:maker].create_random_sequence : @players[:maker].create_sequence
  end

  def retrieve_guess
    @guess = players[:breaker].guess_code
    @clue = []
  end

  def evaluate_guess
    guess = @guess.dup
    code = @secret_code.dup
    code.each_with_index do |num, idx|
      next unless num == guess[idx]

      @clue << 'X'
      code.delete_at(idx)
      guess.delete_at(idx)
    end

    # Need to create logic for near match
    # Probably should find a more efficient way to find perfect match
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
game.set_code
p game.secret_code
