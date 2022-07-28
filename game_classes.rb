# frozen_string_literal: true

# Module to contain all player classes/modules
module GameClasses
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
end
