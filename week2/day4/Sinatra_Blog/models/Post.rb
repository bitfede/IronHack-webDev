class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize(title, text, sponsored)
		@title = title
		@date = Time.now
		@text = text
		@sponsored = sponsored
	end

	def sponsored?
		@sponsored
	end

	def sponsor!
		@sponsored = true
	end

	def unsponsor!
		@sponsored = false
	end

end