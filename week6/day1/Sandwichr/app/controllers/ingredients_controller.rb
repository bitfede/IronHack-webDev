class IngredientsController < ApplicationController

	def create
		ingredient = INgredient.create(ingredient_params)
		render json: ingredient
	end

end
