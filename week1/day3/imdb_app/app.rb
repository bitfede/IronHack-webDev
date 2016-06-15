require("imdb")

file = File.open("lib/movies.txt")
movie_titles = []
file.each do |line|
    movie_titles.push(line.chomp)

end
movie_ratings = []
movie_titles.each do |movie|

the_search = Imdb::Search.new(movie)

first_result = the_search.movies[0]

movie_ratings.push(first_result.rating.round)

end

column = movie_ratings.length
row = 10

while row > 0
    movie_ratings.each do |rating|
        print "|"
        if rating < row
            print " "
        else
            print"#"
        end

    end    
    print "|"
    puts ""    
row -= 1    
end

puts "-----------"

i = 1
while i <= movie_ratings.length
    print "|" + i.to_s
i += 1 
end
puts "|\n"

j = 0
puts ""
while j < movie_titles.length
    print j + 1
    print ". "
    print movie_titles[j]
    puts ""

j += 1
end