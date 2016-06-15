class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
	end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShackShop
	def initialize
		#constructor
		@shakeList = [ ]

	end

	def add_milkshake(milkshake)
		@shakeList.push(milkshake)
	end

	def price_of_list
		total_price_of_list = 0

		@shakeList.each do |milkshake|
			total_price_of_list += milkshake.price_of_milkshake
		end
		total_price_of_list
	end

end


#TESTING STARTS HERE


shop = ShackShop.new

chocolate_chips = Ingredient.new("Chocolate Chips", 1)
banana = Ingredient.new("Banana", 2)
pineapple = Ingredient.new("Pineapple", 2)

nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

fedes_milkshake = MilkShake.new
fedes_milkshake.add_ingredient(pineapple)
fedes_milkshake.add_ingredient(banana)

shop.add_milkshake(nizars_milkshake)
shop.add_milkshake(fedes_milkshake)

puts nizars_milkshake.price_of_milkshake
puts fedes_milkshake.price_of_milkshake

puts "#{shop.price_of_list}"
