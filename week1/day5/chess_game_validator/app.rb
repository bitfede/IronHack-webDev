# app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/tester.rb")

tester = Tester.new

##Rook

black_rook_right = Rook.new(2, 4, "black")



puts "Rook Tests"
p black_rook_right.can_move?(8, 5) == true   # Vertical movement
p black_rook_right.can_move?(4, 8) == true   # Horizontal movement
p black_rook_right.can_move?(5, 5) == false  # Diagonal movement (invalid)
p black_rook_right.can_move?(3, 6) == false  # Side diagonal movement? (invalid)
p black_rook_right.can_move?(8, 6) == true  
p black_rook_right.can_move?(3, 8) == true  
p black_rook_right.can_move?(3, 1) == false  


tester.test(black_rook_right)

# puts ""

##King

# black_king = King.new(5, 8, "black")

# puts "King Tests"
# p black_king.can_move?(5, 7) == true   # Forward movement
# p black_king.can_move?(6, 7) == true   # Diagonal movement
# p black_king.can_move?(5, 4) == false
# p black_king.can_move?(7, 5) == false


