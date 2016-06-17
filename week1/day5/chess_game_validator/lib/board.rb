class Board
	def initialize
		@pieces = [
			nil,
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8],
			[nil,1,2,3,4,5,6,7,8]
		]
	end

	def add_piece(piece)
		x = 1
		y = 1

		while y <= 8
		x = 1
			while x <= 8
				if (x == piece.x && y == piece.y)
					@pieces[x][y] = piece
				end
				x += 1
			end
			puts ""
			y += 1
		end

				print_board

	end

	def can_move?
		#TODO
	end


	##Method to print the board with all the 
	def print_board
		
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
		print "    "
		(1..8).each { |n| print (" " + n.to_s + " ") }
		puts ""


	end


end