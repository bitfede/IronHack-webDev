class Player
	attr_accessor :name, :position
	def initialize(name, startingRoom, roomData)
		@roomData = roomData
		@name = name
		@position = startingRoom
		@conns = []
	end

	def lookAround()
		puts "------------------------------------------------------"
		puts "------------------------------------------------------"
		puts "------------------------------------------------------"

		@conns = []
		puts @position.description
		@position.connections.each do |pos|
			@conns.push(pos.split(" "))
		end
		puts ""
		@conns.each do |direction|
			puts "->  you can go to " + direction[0].gsub(/_/, " ") + " if you move " + direction[1]
		end	
		puts ""
	end

	def move(dir)
		@conns.each do |direction|
			if dir == direction[1]
				#puts "DEBUG you can move " + dir
				@roomData.each do |room|
					if (direction[0] == room.name)
						#puts "DEBUG found room " + room.name
						@position = room
					end
				end

			elsif dir != direction[1]
				#puts "DEBUG you cannot move " + dir
			end

		end
	
	end

	def interact(obj)
	#obj is a string describing object
	  obj = obj.downcase
		interacted = @position.interact(obj)
		interacted
	end

	def displayobj()
		@position.displayob
	end

end