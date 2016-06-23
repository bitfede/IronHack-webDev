require_relative('../app.rb')

require 'sinatra'
require 'rack/test'

describe 'Server Service' do
	include RAck::Test::Methods

	def app
				Sinatra::Application
	end	
end