require 'pry'

require_relative "tic_tac_toe"


game = Tictactoe.new

puts 
puts "Welcome to Tic Tac Toe!"
puts 


puts "Press enter to Start! CPU will go first:"

enter = gets.chomp

if enter == ""

	game.first_cpu_move
	game.display
	
	while game.turns_left > 0
		
		game.human_move(gets.chomp)
		game.display
		game.cpu_corner_move
		game.display
		game.human_move(gets.chomp)
		game.display
	end
end






