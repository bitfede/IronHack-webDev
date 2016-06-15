class Blog
	def initialize()
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def sortPosts()
		@posts.sort_by! {|post| -post.date }
	end

	def printpost(post)
			puts "\n\n"
			if (post.sponsored == true) 
			print "**************"
			print post.title
			puts "***************"
		else
			puts post.title
			puts "**************"
		end
		puts post.text
		puts "----------------\n\n"
	end

	def publish_front_page()
		counter = 0
			while counter != 3
				printpost(@posts[counter])
				counter = counter + 1
			end
	end

	def publish_posts()

		publish_front_page()

		len = @posts.length
		counter = 3
		pages = (len / 3) + 1
		currentpage = 1
		input = ""

		while (input != 'exit')
			if (counter > len)
				counter = len - 4
				puts "NOW" 
			end
			pagect = 1

			while pagect <= (pages)
				if (currentpage == pagect)
					print "["
					print pagect
					print "]"
				else
					print pagect
				end
				print " "
				pagect = pagect + 1
			end

			puts "\n\n"
			puts "Type 'n' to go to the next page"
			print "your choice: "
			input = STDIN.gets.chomp

			if (input == 'n')
				limit = counter + 3
				currentpage = currentpage + 1
				puts counter.to_s + "DEBUG"

			elsif (input  == 'b')
				counter = counter - 3
				limit = counter + 3
				currentpage = currentpage - 1
				puts counter.to_s + "DEBUG"
			end

				if (limit >= len)
					limit = len -1
				end

			while (counter <= limit && counter < len && input != 'exit')

				puts "counter= " + counter.to_s + " limit = " + limit.to_s
				printpost(@posts[counter])
				counter = counter + 1
			end

		end
	end
end