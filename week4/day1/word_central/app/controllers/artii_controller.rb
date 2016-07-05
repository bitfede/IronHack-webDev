class ArtiiController < ApplicationController
	def home
		render 'home'
	end

	def newart

		@asciifier = Artii::Base.new(:font => @font)

		render plain: @asciifier

	end
end
