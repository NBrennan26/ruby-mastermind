# frozen_string_literal: true

# Module to contain all player classes/modules
module GameClasses
  # Codemaker Module
  module Codemaker
    def create_sequence
      puts ' '
      puts 'CODEMAKER: Please create the Secret Code'
      puts 'Must be a 4-digit number, with each digit between 1-6'
      puts 'Example: 3631'
      gets.chomp.to_s.split('').map(&:to_i)
    end

    def create_random_sequence
      sequence = []
      4.times do
        sequence << rand(1..6)
      end
      sequence
    end
  end

  # Codebreaker Module
  module Codebreaker
    def guess_code
      puts ' '
      puts 'CODEBREAKER: Please input your guess'
      puts 'Must be a 4-digit number, with each digit between 1-6'
      puts 'Example: 3631'
      gets.chomp.to_s.split('').map(&:to_i)
    end
  end

  # Player Superclass
  class Player
    attr_reader :role, :is_ai, :player_no

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
