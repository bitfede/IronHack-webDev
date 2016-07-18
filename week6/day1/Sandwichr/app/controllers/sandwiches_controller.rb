class SandwichesController < ApplicationController
	def index
	sandwiches = Sandwich.all
	render json: sandwiches
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json:
	end


	def create
	sandwiche = Sandwich.create(sandwich_params);
	render json: sandwich
	end

	def sandwich_params
	params_require(:sandwich).permit(:name, :bread_type)
			return
	end
	sandwich.update(sandwich_params)
	reder json:sandwich
	end
	end

	def show 
	sandwich.Sandwich.find_by(id: params:[id]
	unless sandwich
		render json: {error: "sadwich not found"}, status:404
		return
	end
	sandwich.update(sandwich_params)
	reder json:sandwich
end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
	end
 	unless sandwich
		render json: {error: "sadwich not found"}, status:404
		return
	end
end