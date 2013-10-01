# require 'pry'

class Tictactoe

	attr_accessor :turns

	def initialize
		@game_board = [[1,2,3],[4,5,6],[7,8,9]]
		@turns = 9

	end
	
	def display_game
		"turns left: #{turns}\n
		#{@game_board[0][0]} #{@game_board[0][1]} #{@game_board[0][2]}\n
		#{@game_board[1][0]} #{@game_board[1][1]} #{@game_board[1][2]}\n
		#{@game_board[2][0]} #{@game_board[2][1]} #{@game_board[2][2]}\n
		\n"
	end

	def human_move(spot)
		case spot.to_i
		when 1
			@game_board[0][0] = "X"	
		when 2
			@game_board[0][1] = "X"
		when 3
			@game_board[0][2] = "X"	
		when 4
			@game_board[1][0] = "X"
		when 5
			@game_board[1][1] = "X"	
		when 6
			@game_board[1][2] = "X"
		when 7
			@game_board[2][0] = "X"	
		when 8
			@game_board[2][1] = "X"
		when 9
			@game_board[2][2] = "X"
		end		
	end

	def cpu_move
		
		if @turns == 8
			if @game_board[4] == "X"
				@game_board[0] = "O"
			else
				@game_board[4] = "O"
			end
			# If any two of opponent's X's are in line with each other
        # and an open space remains on that line, place an O in
        # that remaining space to block (prevent opponent from
        # winning the game)

		end
		#I need to figure out how to design 2nd move

	end


	def check_for_winner
		#If X is in game_board 0 or game board 1, place 0 on gameboard 2
	end


end




	# def first_cpu_move
	# 	@game_board[4] = "O"
	# 	@turns -= 1
	# end

	# def cpu_corner_move
	# 	@corner_x = [@game_board[0], @game_board[2], @game_board[6], @game_board[8]]
	# 	if @corner_x.include?("X") 
	# 		if @corner_x[0] == "X"
	# 			@game_board[6] = "O"

	# 		elsif @corner_x[1] == "X"
	# 			@game_board[8] = "O"
			
	# 		elsif @corner_x[2] == "X"
	# 			@game_board[8] = "O"

	# 		else @corner_x[3] == "X"
	# 			@game_board[6] = "O"

	# 		end
	# 	end
	
	# 	def cpu_reg_move
	# 		#if the computer has 2 in a row, play the 3rd spot
	# 		ftw = [@game_board[0],@game_board[4],@game_board[8]]

	# 		if ftw.count("O") == 2
	# 			ftw.map! {|i| i != "O" ? "O" : i}

				
	# 		end



# 	def check_wins

# 		win = ["O","O","O"]

# 		if [@game_board[0], @game_board[4], @game_board[8]] == win
# 			puts"CPU WON you LOSEr"
# 		end

# 	end

# end


