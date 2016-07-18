class SandwichIngredient < ActiveRecord::Base
	belongs_to :Sandwich
	belongs_to :ingredient
end
