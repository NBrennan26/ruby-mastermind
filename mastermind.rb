# frozen_string_literal: true

require_relative 'game_classes'
require_relative 'game_text'

# Main Class with most game-driving logic
class Game
  include GameClasses
  include GameText

  attr_reader :players, :p1_role, :secret_code, :previous_clues, :previous_guesses

  def initialize
    prompt_player_role
    @p1_role = gets.chomp
    prompt_player_two_class
    @p2_player = gets.chomp
    @players = {}
    @previous_guesses = []
    @previous_clues = []
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
    matched_code_indices = []
    matched_guess_indices = []

    check_exact_match(matched_code_indices, matched_guess_indices)
    check_near_match(matched_code_indices, matched_guess_indices)

    record_round
  end

  def check_exact_match(matched_code_indices, matched_guess_indices)
    @secret_code.each_with_index do |num, idx|
      next unless num == @guess[idx]

      @clue << 'X'
      matched_code_indices << idx
      matched_guess_indices << idx
    end
  end

  def check_near_match(matched_code_indices, matched_guess_indices)
    @secret_code.each_with_index do |num, idx|
      for j in 0..3
        next unless num == @guess[j] && !matched_code_indices.include?(idx) && !matched_guess_indices.include?(j)

        @clue << 'O'
        matched_code_indices << idx
        matched_guess_indices << j
      end
    end
  end

  def record_round
    @previous_guesses << @guess
    @previous_clues << @clue
  end
end

# Play commands
game = Game.new
game.create_roles
p game.players

# game.players[:breaker].test_breaker
# game.players[:maker].test_maker
# puts game.players[:maker].create_random_sequence
# p game.players[:maker].create_sequence
game.set_code
p game.secret_code

puts 'Retrieving Guess and processing'
game.retrieve_guess
game.evaluate_guess
p game.previous_clues
p game.previous_guesses
