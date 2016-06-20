class Lexiconomitron
	def eat_t(string)
		letters = string.split("")
		 letters.each do |letter|  
		 	if letter == "t" || letter == "T"
		 		letters.delete(letter)
		 		
		 	else
		 		#puts letter
		 	end
		end
		solotion= letters.join("")
		 	 solotion 
	end
	def reverse_words(array)
		array.each {|word| word.reverse! }
		array
	end
	def retFL(array)
		return [array.first, array.last]
	end

	def shazam(array)
		array1 = reverse_words(array)
		new_arr = retFL(array1)
		final_arr = []
		new_arr.each do |word| 
			final_arr.push(eat_t(word))
		end 
		final_arr
	end

	def oompa_loompa(array)
		new_arr = []

		array.each do |word|
			if (word.length <= 3)
				new_arr.push(word)
			end
		end
		final_arr = []
		new_arr.each do |word| 
			final_arr.push(eat_t(word))
		end 
		final_arr
	end









end