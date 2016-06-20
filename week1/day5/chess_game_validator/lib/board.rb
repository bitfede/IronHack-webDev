class Board
	def initialize
		@pieces = [
			nil,
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	end

	def add_piece(piece)
		@pieces[piece.x][piece.y] = piece
	end	

	def can_move?(start, destination)
		#catch moving into same position
		if (start[0] == destination[0]) && (start[1] == destination[1])
			#DEBUG puts "you are trying to move to the same spot"
			false
		#catch moving out of bounds
		elsif (destination[0] > 8 || destination[1] > 8)
			#DEBUG puts "cannot move object, destination out of bounds"
			false
		#making sure there's a piece there
		elsif ( @pieces[start[0]][start[1]] == nil )
			#DEBUG puts "no element selected"
			false
		else
			piece = @pieces[start[0]][start[1]]
			piece.can_move?(destination[0],destination[1])
		end
	end


	##Method to print the board with all the 
	def print_board
		puts "Chess Board:\n\n"
		y = 8
		while y >=1
		x = 1
		print y.to_s + "  "
			while x <= 8
				if (@pieces[x][y].class.to_s == "Rook")
					if (@pieces[x][y].color == "black")
						print "|b"
					else
						print "|w"
					end
					print "R"
				elsif (@pieces[x][y].class.to_s == "King")
					if (@pieces[x][y].color == "black")
						print "|b"
					else
						print "|w"
					end
					print "K"
				elsif (@pieces[x][y].class.to_s == "Queen")
					if (@pieces[x][y].color == "black")
						print "|b"
					else
						print "|w"
					end
					print "Q"
				elsif (@pieces[x][y].class.to_s == "Pawn")
					if (@pieces[x][y].color == "black")
						print "|b"
					else
						print "|w"
					end
					print "P"
				elsif (@pieces[x][y].class.to_s == "Bishop")
					if (@pieces[x][y].color == "black")
						print "|b"
					else
						print "|w"
					end
					print "B"
				elsif (@pieces[x][y].class.to_s == "Knight")
					if (@pieces[x][y].color == "black")
						print "|b"
					else
						print "|w"
					end
					print "K"
				else
					print "| "
					print "-"
				end

				x += 1
			end
			puts "|"
			y -= 1
		end


		puts ""
		print "   "
		(1..8).each { |n| print (" " + n.to_s + " ") }
		puts ""


	end


end