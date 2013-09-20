require 'pry'

# REQUIREMENTS

# computer places their O

# Ability for human to type the number, which places an X

class Tictactoe

	def initialize
		@game_board = [1,2,3,4,5,6,7,8,9]
		@turns = 9
		@corner_x = []
		@winning_combos = [@game_board[0],@game_board[4],@game_board[8]]
	end
	
	def display
		puts "--------------"
		puts "#{@game_board[0]} #{@game_board[1]} #{@game_board[2]}"
		puts "#{@game_board[3]} #{@game_board[4]} #{@game_board[5]}"
		puts "#{@game_board[6]} #{@game_board[7]} #{@game_board[8]}"
		puts "--------------"
		if @turns % 2 == 0
			puts " your turn --->"
		end
	end

	def first_cpu_move
		@game_board[4] = "O"
		@turns -= 1
	end

	def cpu_corner_move
		@corner_x = [@game_board[0], @game_board[2], @game_board[6], @game_board[8]]
		if @corner_x.include?("X") 
			if @corner_x[0] == "X"
				@game_board[6] = "O"

			elsif @corner_x[1] == "X"
				@game_board[8] = "O"
			
			elsif @corner_x[2] == "X"
				@game_board[8] = "O"

			else @corner_x[3] == "X"
				@game_board[6] = "O"

			end
		end
	
		def cpu_reg_move
			#if the computer has 2 in a row, play the 3rd spot
			ftw = [@game_board[0],@game_board[4],@game_board[8]]

			if ftw.count("O") == 2
				ftw.map! {|i| i != "O" ? "O" : i}

				
			end



			#if there are 2 X's, then place an x where fixnum is
		end
		
		@turns -= 1
	end


	

	def human_move(spot)

		if @game_board.include?(spot.to_i)
			@game_board[spot.to_i - 1] = "X"
		else
			puts "Please play valid spot on the board"
		end
		@turns -= 1
	end 

	def check_wins

		win = ["O","O","O"]

		if [@game_board[0], @game_board[4], @game_board[8]] == win
			puts"CPU WON you LOSEr"
		end

	end

	def turns_left
		check_wins
		@turns
	end


end




#while there isn't a tictactoe, do this runner setup


