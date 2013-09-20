
# 1 2 3
# 4 5 6
# 7 8 9


game_board = [1,2,3,4,5,6,7,8,9]

one = game_board.map {|i| i % 3 == 1 ? "X" : i}
two = game_board.map {|i| i % 3 == 2 ? "X" : i}
three = game_board.map {|i| i % 3 == 3 ? "X" : i}



puts one.inspect 
puts two.inspect
puts three.inspect






#I'm getting the error no implicit conversion of String into Integer (TypeError)

#ftw[0] = 1. So why can't it compare it to == 1? Does it have to do with this?

# http://stackoverflow.com/questions/6119373/no-implicit-conversion-from-nil-to-integer-when-trying-to-add-anything-to-arra
































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