require_relative("lib/Blog.rb")
require_relative("lib/Post.rb")

seconds_in_day = 60 * 60 * 24

blog = Blog.new
blog.add_post Post.new("Post Title 1", Time.now - 9 * seconds_in_day , "Post text 1", false)
blog.add_post Post.new("Post Title 2", Time.now - 8 * seconds_in_day , "Post text 2", false)
blog.add_post Post.new("Post Title 3", Time.now - 7 * seconds_in_day , "Post text 3", true)
blog.add_post Post.new("Post Title 4", Time.now - 6 * seconds_in_day , "Post text 4", false)
blog.add_post Post.new("Post Title 5", Time.now - 5 * seconds_in_day , "Post text 5", false)
blog.add_post Post.new("Post Title 6", Time.now - 4 * seconds_in_day , "Post text 6", true)
blog.add_post Post.new("Post Title 7", Time.now - 3 * seconds_in_day , "Post text 7", false)
blog.add_post Post.new("Post Title 8", Time.now - 2 * seconds_in_day , "Post text 8", false)



blog.publish_posts