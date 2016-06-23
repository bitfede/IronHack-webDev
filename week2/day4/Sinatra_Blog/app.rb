require_relative("models/Blog.rb")
require_relative("models/Post.rb")

require 'sinatra'
require "sinatra/reloader"

get '/' do
	"HELLO!"
	end