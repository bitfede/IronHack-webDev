class Text 

	def processText(text)
		text = text.split(" ")
		text.length
		puts "Your text has " + text.length.to_s + " words in it."
	end

	def getInput
		puts "Enter some text so we can process it!"
		input = gets.chomp
		processText(input)
	end

end