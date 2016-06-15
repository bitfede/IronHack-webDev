class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def avgPrice(array)
	average = 0

	array.each do |price|
		average = average + price
	end
	average = average / array.length
	average
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

#EACH exercise
# homes.each do |home| 
# 	puts "#{home.name} in #{home.city}"
# 	puts "Price: #{home.price}$ a night"
# end

# MAP exercise
# prices = homes.map do |home|
# 	home.price
# end
# average = avgPrice(prices)
# puts average

#REDUCE exercise
avgPrice = homes.reduce(0.0) do |sum, h|
	sum + h.price
end
avgPrice = avgPrice / homes.length
puts avgPrice