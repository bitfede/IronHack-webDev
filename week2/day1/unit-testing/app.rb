# app.rb

require_relative("lib/string_calculator.rb")

the_calculator = StringCalculator.new

p the_calculator.add("")  == 0

puts "-------------------------test#0"
p the_calculator.add("6") == 6
p the_calculator.add("9") == 9

puts "-------------------------test#1"
p the_calculator.add("5,7") == 12 
p the_calculator.add("4,3") == 7

puts "-------------------------test#2"
p the_calculator.add("A5,7") == 12 
p the_calculator.add("4,3sdf") == 7

puts "-------------------------test#3"
p the_calculator.add("5,7,10") == 22 
p the_calculator.add("4,3,20") == 27

puts "-------------------------test#4"
p the_calculator.add("5&7") == 12 
p the_calculator.add("4&3") == 7

puts "-------------------------test#5"
p the_calculator.add("5&7,10") == 22 
p the_calculator.add("4,3&20") == 27