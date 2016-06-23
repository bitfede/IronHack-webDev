require_relative("../models/Post.rb")
require_relative("../models/Blog.rb")

RSpec.describe Blog do 

	#declare global vars
	let :the_blog do
		post1 = Post.new("Title1" , "This is post number one", false )
		sleep(1.1)
		post2 = Post.new("Title2" , "This is post number two", false )
		sleep(1.1)
		post3 = Post.new("Title3" , "This is post number three", false )
		sleep(1.1)
		post4 = Post.new("Title4" , "This is post number four", false )
		blogg = Blog.new
		blogg.add_post(post1)
		blogg.add_post(post2)
		blogg.add_post(post3)
		blogg.add_post(post4)
		blogg
	end

	#start tests

	describe "#add_post" do

		it "adds five posts" do
			expect(the_blog.posts.length).to eq(4)
		end

	end

	describe "#sortPosts" do
		it "sorts all the posts by date" do

			the_blog.sortPosts
			expect( the_blog.posts[0].date > the_blog.posts[1].date ).to eq(true)
		end
	end
	
end