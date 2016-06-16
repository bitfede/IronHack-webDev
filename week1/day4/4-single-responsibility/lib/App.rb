class App
	def initialize()
		@database = {
			:nizar 		=> "swordfish",
			:federico => "password1",
			:john			=> "unicorn"
		}
	end

	def askCredentials
		puts ""
		puts "Please enter your credentials to login"

		puts ""
		print "Enter your UserName: "
		user = gets.chomp

		puts ""
		print "Enter your Password: "
		pass = gets.chomp

		authenticate(user, pass)
	end

	def authenticate(user, pass)
		auth = 0
		@database.each do |key, val|
			if (user == key.to_s)
				if (@database[key] == pass)
					success(user)
					auth = 1
					break
				end
			end
		end
		if auth == 0
			failedLogin
		end
	end

	def success(user)
		puts "SUCCESSFULLY AUTHENTICATED"
		puts "Hello " + user + "!"
 	end

	def failedLogin
		puts "INCORRECT CREDENTIALS. Get out of here!"
	end

end