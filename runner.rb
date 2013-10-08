require_relative "tic_tac_toe"


game = Tictactoe.new

puts 
puts "Welcome to Tic Tac Toe! Select a number for your first move:"

while game.turns > 0
	puts game.display_game
	spot = gets.chomp

	game.human_move(spot)
	game.check_for_win
	game.minus_a_turn
	puts game.cpu_move
	game.minus_a_turn
end




#now allow human to play move
# game.human_move(gets.chomp)
# game.display
# game.cpu_corner_move
# game.display
# game.display
	







