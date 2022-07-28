# frozen_string_literal: true

# Module to contain all player classes/modules
module GameClasses
  # Codemaker Module
  module Codemaker
    def create_sequence
      puts ' '
      puts 'Please create and input a 4-digit code'
      puts 'Example: 3731'
      gets.chomp.to_s.split('').map(&:to_i)
    end

    def create_random_sequence
      sequence = []
      4.times do
        sequence << rand(10)
      end
      sequence
    end

    def test_maker
      puts 'Maker included'
    end
  end

  # Codebreaker Module
  module Codebreaker
    def guess_code
      puts ' '
      puts 'Please input your code guess'
      puts 'Example: 3731'
      gets.chomp.to_s.split('').map(&:to_i)
    end

    def test_breaker
      puts 'Breaker included'
    end
  end

  # Player Superclass
  class Player
    attr_reader :role, :is_ai

    def initialize(game, player_no)
      @game = game
      @player_no = player_no
      @is_ai = false
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

    def initialize(game, player_no)
      super
      @is_ai = true
    end
  end

  # Computer Codemaker Subclass
  class ComputerMaker < Player
    include Codemaker

    def initialize(game, player_no)
      super
      @is_ai = true
    end
  end
end
