#This is a mini-room game! [Ironhack day3 - afternoon programming challenge]
#Author: Federico De Faveri

#vars

require_relative("lib/Player.rb")
require_relative("lib/Room.rb")

connections = {
	:room1 => ['The_Kitchen E'],
	:room2 => ['The_First_Dark_Room W','The_Main_Corridor N'],
	:room3 =>	['The_Kitchen S','The_Garage W','The_Patio E'],
	:room4 =>	['The_Main_Corridor E'],
	:room5 =>	['The_Main_Corridor W']
}

objects = {
	:room1	=> {
		:chair 				=> 	"You examine the chair and realize that you are tied very loosely, you can easily pull the string off your hands and break free",
		:plate 				=>	"You pick up the plate on the ground and realized that there is nothing but old soggy bread, ugh"
	},
	:room2 	=> {
		:"window" 		=>  "You get close to the window and try to open it, unfortunately it is locked",
		:sink				 	=>	"You wash your face in the sink with cold water",
		:walls				=>	"You examine the walls closely and you see blood sprayed on them.. You really need to get out of here.. fast"
	},
	:room3 	=> {
		:wallet			=>	"You look closely on the ground and you see a wallet, you examine it and it is empty",
		:hole				=>	"You almost step on a small hole in the ground, damn this house is a nightmare.. you have to explore the rooms to find a way out asap"
	},
	:room4	=> {
		:car 				=>	"You walk towards the car, break the window and connect the wires... the car starts and you power through the garage door",
		:"alarm button" => "The fire alarm goes off and you freeze, you can hear a couple of people yelling and running towards you, this will not end well"
	},
	:room5	=> {
		:fence	=> "You slowly walk toward the fence and jump to the other side, you start running like never before",
		:vodka  => "You pick up the bottle of vodka next to the mobster and he wakes up, you suddenly realized that it's over, never take the vodka away from Dimitriy",
		:door		=> "You slowly walk to the door and try to open it.. damn it it's locked, there must be another way out"
	}
}

###############################

#instructions
puts "Yesterday night at the bar you messed around with the wrong girl, it turned out that her husband was an Ukranian mobster.
you got beat up by his gang and you lost consciousness.
...
You wake up in a chair, the room is very dark\nYou soon realized you have been kidnapped\n"

rooms = []

room1 = Room.new('The_Dark_Room', 'You are in the first dark room', connections[:room1])
room1.populateObj(objects[:room1])
rooms.push(room1)
room2 = Room.new('The_Kitchen', 'You are in the second room, which seems like an old kitchen' , connections[:room2])
room2.populateObj(objects[:room2])
rooms.push(room2)
room3 = Room.new('The_Main_Corridor', 'You are in the third room, the main corridor', connections[:room3])
room3.populateObj(objects[:room3])
rooms.push(room3)
room4 = Room.new('The_Garage', 'You are in the fourth room, a messy garage', connections[:room4])
room4.populateObj(objects[:room4])
rooms.push(room4)
room5 = Room.new('The_Patio', 'You are in an outdoor patio, there is a mobster passed out drunk on a table snoring', connections[:room5])
room5.populateObj(objects[:room5])
rooms.push(room5)


player = Player.new('Fede', room1, rooms)


input = ""
while input != "exit"
	stop = false
	player.lookAround
	player.displayobj
	puts ""
	print "(valid choices: N, S, W, E, or type the object name to interact with it)\n > "
	input = gets.chomp
	puts ""
	stop = player.interact(input)
	player.move(input)
	if (stop == true)
		print "press any key to continue > "
		gets
	end
end