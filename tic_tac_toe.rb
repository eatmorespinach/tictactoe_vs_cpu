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
			if @game_board[1][1] == "X"
				@game_board[0][2] = "O"
			else
				@game_board[1][1] = "O"
			end
		else 
			block_horizontal_win
			block_vertical_win
			block_diagonal_win
		end
	end
	

  def block_horizontal_win
  	3.times do |i|
	    blank_x = -1
	    x_row_total = 0
	    3.times do |j|
        if @game_board[i][j] == "X"
            x_row_total += 1
        else
            blank_x = j
        end
        # binding.pry
        if x_row_total == 2 && blank_x > -1
            @game_board[i][blank_x] = "O"
    		end
			end
		end
  end

  def block_vertical_win
  	3.times do |i|
	    blank_x = -1
	    x_row_total = 0
	    3.times do |j|
        if @game_board[j][i] == "X"
        	x_row_total += 1
        else 
        	blank_x = j
        end

        if x_row_total == 2 && blank_x > -1
					@game_board[blank_x][i] = "O"
    		end
			end
		end
  end

  def block_diagonal_win
  	blank_x = -1
  	x_row_total = 0
  	
  	3.times do |i|	
			if @game_board[i][i] == "X"
				x_row_total += 1
			else 
				blank_x = i
			end

			if x_row_total == 2 && blank_x > -1
				@game_board[blank_x][blank_x] = "O"
			end
		
  	end
  end





	def minus_a_turn
		@turns -= 1
	end

end







