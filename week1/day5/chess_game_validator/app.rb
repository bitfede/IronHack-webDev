# app.rb

require_relative("lib/tester.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")


tester = Tester.new
my_board = Board.new

##Rook

####puts "Rook Tests"
black_rook_right = Rook.new(8, 8, "black")
black_rook_left = Rook.new(1,8,"black")
white_rook_right = Rook.new(8, 1, "white")
white_rook_left = Rook.new(1, 1, "white")

# p black_rook_right.can_move?(8, 5) == true   # Vertical movement
# p black_rook_right.can_move?(4, 8) == true   # Horizontal movement
# p black_rook_right.can_move?(5, 5) == false  # Diagonal movement (invalid)
# p black_rook_right.can_move?(3, 6) == false  # Side diagonal movement? (invalid)
###tester.test(black_rook_right)

##King

black_king = King.new(4, 8, "black")
white_king = King.new(4, 1, "white")

####puts "King Tests"
###tester.test(black_king)
# p black_king.can_move?(5, 7) == true   # Forward movement
# p black_king.can_move?(6, 7) == true   # Diagonal movement
# p black_king.can_move?(5, 4) == false
# p black_king.can_move?(7, 5) == false


##Bishop

####puts "Bishop Tests"
black_bishop_right = Bishop.new(6,1,"black")
black_bishop_left = Bishop.new(3,1,"black")
white_bishop_right = Bishop.new(6, 8, "white")
white_bishop_left = Bishop.new(3, 8, "white")
###tester.test(black_bishop_right)

##Knight

####puts "Knight Tests"
black_Knight_right = Knight.new(7,8,"black")
black_Knight_left = Knight.new(2,8,"black")
white_Knight_right = Knight.new(2,1,"white")
white_Knight_left = Knight.new(7,1,"white")
###tester.test(black_Knight_right)

##Queen

####puts "Queen Tests"
black_queen = Queen.new(5,8,"black")
white_queen = Queen.new(5,1,"white")
###tester.test(black_queen)

##Pawn


####puts "Black Pawn Tests"
black_pawns = []
black_pawn_1 = Pawn.new(1,7,"black")
black_pawns.push(black_pawn_1)
black_pawn_2 = Pawn.new(2,7,"black")
black_pawns.push(black_pawn_2)
black_pawn_3 = Pawn.new(3,7,"black")
black_pawns.push(black_pawn_3)
black_pawn_4 = Pawn.new(4,7,"black")
black_pawns.push(black_pawn_4)
black_pawn_5 = Pawn.new(5,7,"black")
black_pawns.push(black_pawn_5)
black_pawn_6 = Pawn.new(6,7,"black")
black_pawns.push(black_pawn_6)
black_pawn_7 = Pawn.new(7,7,"black")
black_pawns.push(black_pawn_7)
black_pawn_8 = Pawn.new(8,7,"black")
black_pawns.push(black_pawn_8)

###tester.test(black_pawn)


####puts "White Pawn Tests"
white_pawns = []
#white_pawn_1 = Pawn.new(1,2,"white")
#white_pawns.push(white_pawn_1)
white_pawn_2 = Pawn.new(2,2,"white")
white_pawns.push(white_pawn_2)
white_pawn_3 = Pawn.new(3,2,"white")
white_pawns.push(white_pawn_3)
white_pawn_4 = Pawn.new(4,2,"white")
white_pawns.push(white_pawn_4)
white_pawn_5 = Pawn.new(5,2,"white")
white_pawns.push(white_pawn_5)
white_pawn_6 = Pawn.new(6,2,"white")
white_pawns.push(white_pawn_6)
white_pawn_7 = Pawn.new(7,2,"white")
white_pawns.push(white_pawn_7)
white_pawn_8 = Pawn.new(8,2,"white")
white_pawns.push(white_pawn_8)
###tester.test(white_pawn)


#adding rooks
my_board.add_piece(black_rook_right)
my_board.add_piece(black_rook_left)
my_board.add_piece(white_rook_left)
my_board.add_piece(white_rook_right)

#adding kings
my_board.add_piece(black_king)
my_board.add_piece(white_king)

#adding queens
my_board.add_piece(black_queen)
my_board.add_piece(white_queen)

#adding bishops
my_board.add_piece(black_bishop_right)
my_board.add_piece(black_bishop_left)
my_board.add_piece(white_bishop_right)
my_board.add_piece(white_bishop_left)

#adding knights
my_board.add_piece(black_Knight_right)
my_board.add_piece(black_Knight_left)
my_board.add_piece(white_Knight_right)
my_board.add_piece(white_Knight_left)

#adding black pawns
black_pawns.each do |pawn|
	my_board.add_piece(pawn)
end

#adding white pawns
white_pawns.each do |pawn|
	my_board.add_piece(pawn)
end

print "Can the tower at 1,1 move to 1,4?  "
p my_board.can_move?([1,1],[1,4])

print "Can the tower at 1,1 move to 4,5?  "
p my_board.can_move?([1,1],[4,5])

print "Can the tower at 1,1 move to 1,1?  "
p my_board.can_move?([1,1],[1,1])

print "Can the tower at 1,1 move to 9,10?  "
p my_board.can_move?([1,1],[9,10])

print "Can I select no element at 5,3 move it to 1,4? "
p my_board.can_move?([1,3],[1,4])

my_board.print_board

#there will be a game class, who will call a new method in the board class to change piece position



