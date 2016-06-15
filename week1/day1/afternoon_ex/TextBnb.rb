class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def displayHomes(array)
  array.each do |home| 
    puts "-\t#{home.name} in #{home.city}"
    puts "\tPrice: #{home.price}$ a night"
    puts "\tCapacity: #{home.capacity} people max"
  end
end

def sortHomes(array, rule)
  if (rule == 'p')
    sortedarr = array.sort { |a , b| a.price <=> b.price}
  elsif (rule == 'P')
    sortedarr = array.sort { |a , b| b.price <=> a.price}
  elsif (rule == 'c')
    sortedarr = array.sort { |a , b| a.capacity <=> b.capacity}
  elsif (rule == 'C')
    sortedarr = array.sort { |a , b| b.capacity <=> a.capacity}
  else
    puts "input not recognized"
  end
  sortedarr
end

def filterHomes(array, city) 
  filteredArr = array.select do |home|
    home.city == city
  end
  filteredArr
end

def filterHomesP(array, price) 
  filteredArr = array.select do |home|
    home.price == price
  end
  filteredArr
end

def calcAverage(array)
  avg = array.reduce(0.0) do |sum , home|
    sum + home.price
  end
  avg = avg / array.length
end

#iteration 0 - create an array

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Ariel's place", "San Juan", 3, 40),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Fede's place", "Monza", 6, 56),
  Home.new("John's place", "Houston", 2, 43),
  Home.new("Allison's place", "NYC", 5, 49),
  Home.new("Smith's place", "Washington", 2, 35),
  Home.new("J's place", "Miami", 6, 55),
  Home.new("David's place", "Mexico City", 4, 44)
]

#iteration 1 - display the home info

#displayHomes(homes)

#iteration 2 - sort the homes in
input = 'a'
while (input != "E" && input != "e")
  puts "How would you like to sort the available homes?"
  puts "-> enter 'P' for prices High to Low"
  puts "-> enter 'p' for prices Low to High"
  puts "-> enter 'C' for capacity High to Low"
  puts "-> enter 'c' for capacity Low to High"
  puts "-> enter 'e' or 'E' to Exit the Program"
  print "Your choice: "
  input = gets.chomp
  if (input =='p' || input == 'P' || input == 'c' || input == 'C')
    sortedHomes = sortHomes(homes, input)
    puts "The list of Homes is sorted!"
    puts "To continue enter any key, to re-sort according to another rule enter 'R' or 'r'"
    print "Your Choice: "
    finalinput = gets.chomp.downcase
    if (finalinput == 'r')
      input = 'a'
    else 
      input = 'e'
    end
  elsif (input == 'e' || input =='E' )
    puts "Exiting the program.."
    exit()
  else
    puts "input not valid"
  end
end

#displayHomes(sortedHomes) #YES! ALL GOOD
# iteration 3 - filter by city
input2 = ''
while (input2 != 'n')
  puts "Do you want to filter your results by city? (enter 'y' or 'n')"
  print "Your Choice: "
  input2 = gets.chomp
  if (input2 == 'y')
    print "Please Insert the city: "
    city = gets.chomp
    filteredHomes = filterHomes(sortedHomes, city)
    puts "The list of Homes is filtered by city! Your list now contains only homes in #{city}"
    puts "To continue enter any key, to re-filter according to another city enter 'R' or 'r'"
    print "Your Choice: "
    finalinput2 = gets.chomp.downcase
    if (finalinput2 == 'r')
      input2 = ''
    else 
      input2= 'n'
    end
  elsif (input2 == 'n')
    input2 = 'n'
    filteredHomes = sortedHomes
  else 
    puts "Invalid choice"
  end
end


#displayHomes(filteredHomes) #YES! ALL GOOD


#iteration 4

#done last, please look at the end of the program

#iteration 5

input3 = ''
while (input3 != 'n')
  puts "Do you want to further filter your results by giving your own price? (enter 'y' or 'n')"
  print "Your Choice: "
  input3 = gets.chomp
  if (input3 == 'y')
    print "Please Insert the price: "
    price = gets.chomp.to_i
    finalHomes = filterHomesP(filteredHomes, price)
    puts "The list of Homes is filtered by price! Your list now contains only prices equal or less than #{price}"
    puts "To continue enter any key, to re-filter according to another price value enter 'R' or 'r'"
    print "Your Choice: "
    finalinput3 = gets.chomp.downcase
    if (finalinput3 == 'r')
      input3 = ''
    else 
      input3= 'n'
    end
  elsif (input3 == 'n')
    input3 = 'n'
    finalHomes = filteredHomes
  else 
    puts "Invalid choice"
  end
end

displayHomes(finalHomes)

average = calcAverage(filteredHomes).round
puts "The Average Price of these homes is #{average}$ per night"





