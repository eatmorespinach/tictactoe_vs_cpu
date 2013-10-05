require 'pry'

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
			if @game_board[1][1] == "X"
				@game_board[0][0] = "O"
			else
				@game_board[1][1] = "O"
			end
		else block_horizontal_win
		end
	end
	

	def block_horizontal_win 
		3.times do |i|
			row_of_x = 0
			ii = 2
			jj = 2
			3.times do |j|
				if @game_board[i][j] == "X"
					row_of_x += 1

					if row_of_x == 2 && ii == 2
						@game_board[i][j+1] = "O"
					else @game_board[ii][jj] = "O"
					end

				else 
					ii = i
					jj = j
				
				end
			
			end
		end	
	end

#Save the blank index 	

#Okay, so I can identify when there are 2 in a row. Now, what's the 
#best way to place an "O" in the block spot? Should I iterate again in
#place_block method? 
	

				# 		@game_board[blank_i][blank_j] == "O"
				# 	end
				# else blank_i = [i.to_i] && blank_j = [j.to_i]



	def place_block
		
	end

	def minus_a_turn
		@turns -= 1
	end

end







