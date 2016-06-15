num = 1
while num <= 100
	result = ""
  str = num.to_s

  if (num % 3 == 0)
  	result = result + "Fizz"
  end
	if (num % 5 == 0) 
  	result = result + "Buzz"
  end
  if (str[0] == '1')
  	result = result + "Bang"
	end

	if (result == "")
		result = str
	end

	puts result
  num = num + 1

end



