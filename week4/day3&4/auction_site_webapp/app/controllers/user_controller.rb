class UserController < ApplicationController
	def new

		@new_user = User.new
		render 'new'

	end

	def create

		@new_user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email]
			)

		if (@new_user.save)

			redirect_to('/')

		else
			render 'new'
		end

	end
end
