require_relative("../models/Post.rb")


RSpec.describe Post do 

	describe "#initialize" do
		it "creates a post" do
			content = "first post"
			post1 = Post.new("post1", content, false)
			expect( post1.text ).to eq(content)
		end
	end
	
	describe "#sponsor!" do
		it "sponsors a post" do
			post1 = Post.new("post1", "first post", false)
			post1.sponsor!

			expect( post1.sponsored ).to eq(true)
		end
	end

	describe "#unsponsor!" do
		it "unsponsors a post" do
			post1 = Post.new("post1", "first post", false)
			post1.unsponsor!

			expect( post1.sponsored ).to eq(false)
		end
	end

end