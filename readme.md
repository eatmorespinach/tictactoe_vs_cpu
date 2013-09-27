Building a Human vs. AI tic tac toe. Human plays first move, but will never beat able to beat 
the AI.

 2. Assume opponent goes first, by marking an X in one of the spaces:
    2.1 If opponent goes in the center space, then place an O in
        the top left space
    2.2 Else if opponent goes anywhere else, place an O in the
        center
 3. Repeat the following steps until the board is filled:

    3.1 Opponent will place another X in one of the remaining empty
        spaces
    3.2 If any two of opponent's X's are in line with each other
        and an open space remains on that line, place an O in
        that remaining space to block (prevent opponent from
        winning the game)
    3.3 Else if first O was placed in center and any center space
        (top center, left center, etc.) remains open, place an
        O in a center space that will cause the opponent to
        have to block
    3.4 Else if first O was placed in corner and any corner space
        remains open, place an O in a corner space that will
        cause the opponent to have to block
    3.5 Otherwise, place an O in any remaining open space