

# one = game_board.map {|i| i % 3 == 1 ? "X" : i}
# two = game_board.map {|i| i % 3 == 2 ? "X" : i}
# three = game_board.map {|i| i % 3 == 3 ? "X" : i}


# #WAYS TO DO THIS

# #have loops check for both vertical and horizontal winning combos. if 2 X's out of 3 in 
# #a line, then automatically place O in existing spot. 

# 				if @game_board[2][0] == "X" && @game_board[2][2] == "X"
# 					@game_board[2][1] = "O"
# 				#had to make this exception for the [2][2] spot in the last row

# 				elsif	@game_board[i][j] == "X"
# 					row_of_x += 1

# 					if row_of_x == 2 && ii == 2
# 						@game_board[i][j+1] = "O"
# 						#this places an O in the 3rd spot if 1st and 2nd spot are occupied by an X
# 					else @game_board[ii][jj] = "O"
# 						#this puts an O in the empty spot if 2nd and 3rd or 1st and 3rd are occupied by an X
# 					end

# 				else 
# 					ii = i
# 					jj = j

# 				end
			
# 			end
# 		end	
# 	end

































# human_move = gets.chomp

# # how come this works, but the 2nd if statement doesn't?
# # there's something I don't understand with != I think. For 2nd if statement, when i type "x", 
# # it says "you must mark with an x, which is not what I want!




# if human_move == "x" || human_move == "X"
# 	puts "yay you wrote X"
# else
# 	puts "You must mark with an X"
# end


# if human_move != "x" 
# 	puts "You must mark with an X"
# else
# 	puts "yay you wrote X"
# end