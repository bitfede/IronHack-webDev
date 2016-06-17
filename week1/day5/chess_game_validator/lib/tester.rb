class Tester

	def test(chessPiece)
		#hardcoding 8x8 chessboard
	rows = 0	#rows is zero and i = 7 because we are counting backwards from the
	i = 7
	columns = 7 
	j = 0


	while i >= rows
		j = 0
		print i+1
		print " "
		while j <= columns
			if ( i+1 == chessPiece.y && j+1 == chessPiece.x)
					print "|O"
			elsif chessPiece.can_move?(j+1, i+1)
					print "|X"
			else
				print "|-"
			end #finish canmove loop

			j = j + 1
		end
		puts "|" #close the chess board and go to a new line
		i = i - 1
	end


	print "   "
	(1..8).each { |n| print (n.to_s + " ") }
	puts ""


	end

end
