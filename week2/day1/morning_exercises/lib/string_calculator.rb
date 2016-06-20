# lib/string_calculator.rb

class StringCalculator
	
	def add(numbers_str)
		
		if (numbers_str == "")
			0
		else
			index = 0
			num = ""
			sum = 0
			while index < numbers_str.length

				char = numbers_str[index]
				if ( (char =~ /[[:digit:]]/) != nil)
					#DEBUG puts char + " is a number!!"
					num = num + char.to_s
				else
					#DEBUG puts char + " is not a number!!"
					#do nothing, skip
					sum = sum + num.to_i
					num = ""
				end
				index += 1
			end
			sum = sum + num.to_i
			sum
		end
	end

end