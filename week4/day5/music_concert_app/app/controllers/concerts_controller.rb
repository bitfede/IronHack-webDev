class ConcertsController < ApplicationController
	def home
		render 'home'
	end

	def new
		@new_concert = Concert.new
		render 'new'
	end

	def create
		@new_concert = Concert.new(
			:artist 				=> params[:concert][:artist],
			:venue 					=> params[:concert][:venue],
			:city 					=> params[:concert][:city],
			:date 					=> params[:concert][:date],
			:price 					=> params[:concert][:price],
			:description 		=> params[:concert][:description]
			)

		if @new_concert.save
			redirect_to '/'
		else
			render 'new'
		end
	end
end
