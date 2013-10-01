require_relative "tic_tac_toe"


game = Tictactoe.new

puts 
puts "Welcome to Tic Tac Toe!"
puts "Select a number for your first move:"

while game.turns > 0
	puts game.display_game
	spot = gets.chomp
	game.human_move(spot)
	puts game.display_game
	puts game.cpu_move
end




#now allow human to play move
# game.human_move(gets.chomp)
# game.display
# game.cpu_corner_move
# game.display
# game.display
	







