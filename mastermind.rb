# frozen_string_literal: true

require_relative 'game_logic'

puts ' '
puts 'Welcome to Mastermind'
puts 'If you are unfamiliar with the rules, please check out the README'

game = Game.new
game.play_game
