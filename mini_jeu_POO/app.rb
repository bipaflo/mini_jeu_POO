require "pry"
require 'bundler'
Bundler.require
require_relative 'lib/game'
require_relative 'lib/player'
player1=Player.new("Josiane")
player2=Player.new("Jose")

puts "Voici les combattants et leurs points de vie"
puts "/n"
player1.show_state
player2.show_state
puts"/n"

while player1.life_points > 0 && player2.life_points > 0
  player1.attacks(player2)
  if player2.life_points > 0
    player2.attacks(player1)
    puts "/n"
    puts "Voici où en sont les combattants"
    player1.show_state
    player2.show_state
    puts "/n"

  else
    puts "/n"
    break

  end
  player2.attacks(player1)
  if player1.life_points > 0
    player1.attacks(player2)
    puts "/n"
    puts "Voici où en sont les combattants"
    player1.show_state
    player2.show_state
    puts "/n"

  else
    puts "/n"

  end

end

binding.pry
