puts "Please enter a phrase:" 
str = gets.chomp

counter = 0
while counter < str.length
	#puts str[counter]
	c = str[counter]
	if c < '0' || c > 'z'
		str[counter] = ' '
	end

	counter = counter + 1
end

words = str.split(' ')

sortedW = words.sort do |word1 , word2|
	word1 = word1.upcase
	word2 = word2.upcase
	if (word1 > word2)
		1
	elsif (word1 < word2)
		-1
	else 
		0
	end
end

print "#{sortedW}\n"