class ArtiiController < ApplicationController
	def home
		render 'home'
	end

	def newart

		artii = const.Base.new
		word =  artii.asciify('bla')

		render plain: word
	end
end
