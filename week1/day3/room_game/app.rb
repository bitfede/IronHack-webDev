#This is a mini-room game! [Ironhack day3 - afternoon programming challenge]
#Author: Federico De Faveri

#vars

require_relative("lib/Player.rb")
require_relative("lib/Room.rb")

connections = {
	:room1 => ['room2 E'],
	:room2 => ['room1 W','room3 N'],
	:room3 =>	['room2 S','room4 W','room5 E'],
	:room4 =>	['room3 E'],
	:room5 =>	['room3 W']
}

###############################

#instructions
puts "Yesterday night at the bar you messed with the wrong guy. He was a russian mobster, who called his gang to kidnap you"

rooms = []

room1 = Room.new('room1', 'You are back in the Prison Cell', connections[:room1])
room1.populateObj(["obj1" , "obj2"])
rooms.push(room1)
room2 = Room.new('room2', 'You are in the second room' , connections[:room2])
rooms.push(room2)
room3 = Room.new('room3', 'You are in the third room', connections[:room3])
rooms.push(room3)
room4 = Room.new('room4', 'You are in the fourth room', connections[:room4])
rooms.push(room4)
room5 = Room.new('room5', 'You are in the fifth room', connections[:room5])
rooms.push(room5)


player = Player.new('Fede', room1, rooms)

player.lookAroundfirst()

input = ""
while input != "exit"
	print "> "
	input = gets.chomp
	
	player.move(input)
end