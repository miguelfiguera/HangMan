require_relative 'game'
require_relative 'text_module'
require 'pry'

def game
  game = Game.new
  game_prep
  turns
  go_again
end

def go_again
  puts 'do you want to play again? Y/N'
  answer = gets.chomp.downcase
  if answer != 'y' && answer != 'n'
    puts 'Yes (Y) or No (N) only, please.'
  elsif answer == 'y'
    game
  else
    puts 'Thanks for playing!'
  end
end

game
