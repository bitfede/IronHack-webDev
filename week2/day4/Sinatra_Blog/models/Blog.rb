class Blog
	attr_accessor :posts
	def initialize()
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def sortPosts()

		@posts.sort! {|a,b| b.date <=> a.date }
		#DEBUG puts @posts[0].date
		#DEBUG puts @posts[1].date
		#DEBUG puts @posts[2].date
	end


end