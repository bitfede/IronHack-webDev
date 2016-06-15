def solve_cipher(input, shift)
  #your code goes here
  #shift = -3 # UNCOMMENT TO SET THE DEFAULT PARAMETER FOR SHIFT
  chars = input.split("")
  soln = ""
  for c in chars
  	if (c == " ")
  		#do nothing
  	else
  		c = c.ord + shift
  		if (c < 'a'.ord)
  			c = 'z'.ord - ('a'.ord - c) + 1
  		elsif (c > 'z'.ord)
  			c = 'a'.ord + (c - 'z'.ord) - 1
  		end

  	end
  c = c.chr
  soln = soln + c
  end

  soln
end

soln = solve_cipher("ifmmp aaa bbb zzz", -1) #test 1
puts soln
soln = solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
puts soln