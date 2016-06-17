class Tester

	def test(chessPiece)
		#hardcoding 8x8 chessboard
	rows = 0
	i = 7
	columns = 7 
	j = 0


	while i >= rows
		j = 0
		print i+1
		print " "
		while j <= columns
			if (chessPiece.can_move?(i+1, j+1))

				if ( i+1 == chessPiece.x && j+1 == chessPiece.y)
					print "|O"
				else
					print "|X"
				end
			else
				print "|-"
			end

			j = j + 1
		end
		puts "|"
		i = i - 1
	end


	print "   "
	(1..8).each { |n| print (n.to_s + " ") }
	puts ""


	end

end
