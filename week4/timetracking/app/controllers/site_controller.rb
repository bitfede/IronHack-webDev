class SiteController < ApplicationController

	def home

		render 'home' #name of the view template

	end
	
	def contacts

		render 'contacts' #name of the contacts template
		
	end

end
