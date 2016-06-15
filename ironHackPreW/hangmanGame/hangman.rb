class Player
	def initialize(name)
		@name = name
		@attempts = 0
	end

	def guess()
		print("Please enter your guess: ")
		guess = gets
		guess
	end
end

player1 = Player.new("Federico")

class Game
	def initialize(players, solution, guesses)
		@players = players
		@solution = solution
		@guesses = guesses
		@status = buildstatus()
	end

	def getPlayers()
		@players
	end

	def buildstatus()
		sol_arr = @solution.split("")
		status = ""
		for ch in sol_arr
			if (ch == " ")
				status = status + "\t"
			else
				status = status + "_ "
			end 
		end
		status
	end

	def showStatus()
		puts @status
	end

	def updateStatus(ch)
		sol_arr = @solution.split("")
		for letter in sol_arr
			#do stuff
		end
	end

	def checkGuess(guess)
		sol_arr = @solution.split("")
		guess = guess.gsub("\n", "")
		for ch in sol_arr
			puts "comparing " + ch.inspect + " with " + guess.inspect
			if (ch == guess)
				puts "your letter is in the phrase!" 
				updateStatus(guess)
			else
				#puts "your letter is not in the phrase!"
			end

		end
	end

end

#create players
player1 = Player.new("Federico")
players = [player1]

#create game, game has a player list, the solution to be guessed and the number of guesses
soln = "hello world"
guesses = 6
game = Game.new(players, soln, guesses)
game.buildstatus()
puts game.showStatus()


for player in game.getPlayers()
	try = player.guess()
	if (game.checkGuess(try) == true)
		#ssss
	else
		#aaaa
	end
		
end



