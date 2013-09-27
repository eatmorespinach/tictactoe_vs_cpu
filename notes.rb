
one = game_board.map {|i| i % 3 == 1 ? "X" : i}
two = game_board.map {|i| i % 3 == 2 ? "X" : i}
three = game_board.map {|i| i % 3 == 3 ? "X" : i}


































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