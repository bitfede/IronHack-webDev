require_relative("models/Blog.rb")
require_relative("models/Post.rb")

require 'sinatra'
require "sinatra/reloader"

blog = Blog.new
blog.add_post Post.new("title1", "this is the first post", false)
blog.add_post Post.new("title2", "this is the second post", false)
blog.add_post Post.new("title3", "this is the third post", false)

get '/' do
	"YO dawg"
	end