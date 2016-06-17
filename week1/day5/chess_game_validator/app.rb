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
black_bishop_right = Bishop.new(4,6,"black")
###tester.test(black_bishop_right)

##Knight

####puts "Knight Tests"
black_Knight_right = Knight.new(6,5,"black")
###tester.test(black_Knight_right)

##Queen

####puts "Queen Tests"
black_queen = Queen.new(2,5,"black")
###tester.test(black_queen)

##Pawn


####puts "Black Pawn Tests"
black_pawn_1 = Pawn.new(3,5,"black")
###tester.test(black_pawn)


####puts "White Pawn Tests"
white_pawn_1 = Pawn.new(3,5,"white")
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





