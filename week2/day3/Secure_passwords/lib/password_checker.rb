class PasswordChecker
	def check_password(email, password)
		@email = email
		@password = password

		if check_characters(password) == false
			false
		elsif check_symbol(password) == false
			false
		elsif check_uplow(password) == false
			false
		elsif check_double(email, password) == false
			false
		else
			true
		end
	end

	def check_characters(password)
		if password.length <= 7 
			false
		else
			true
	end
	end

	def check_symbol(password)
		if password =~ /[a-zA-Z]*(\d)*[@#$%^&+=]/ 
			true
		else
			false
	end
	end

	def check_uplow(password)
		if password =~ /[a-z]*[A-Z]/
			true
		else
			false
	end
	end

	def check_double(email, password)
		user_name = email.split("@")
		name = user_name[0]
		domain_name = user_name[1].split(".")
		final_domain = domain_name[0]

		if password.include?(name)
			false
		elsif password.include?(final_domain)
			false
		else
			true

	end
	end

end