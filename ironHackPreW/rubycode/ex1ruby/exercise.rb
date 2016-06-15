puts "What is the source file?"
source = gets.chomp
puts "What is the destination file?"
dest = gets.chomp

data = IO.read(source)

IO.write(dest, data)