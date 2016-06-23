require_relative("Save.rb")

class Blog
	include Save
	attr_accessor :posts
	def initialize()
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def sortPosts()

		@posts.sort! {|a,b| b.date <=> a.date }
		 #puts @posts[0].date
		 #puts @posts[1].date
		 #puts @posts[2].date
	end	

	def latest_posts
		sortPosts()
		@posts
	end



end