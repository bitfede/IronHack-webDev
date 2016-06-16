class Player
	attr_accessor :name, :position
	def initialize(name, startingRoom, roomData)
		@roomData = roomData
		@name = name
		@position = startingRoom
		@conns = []
	end

	def lookAround()
		@conns = []
		puts @position.description
		@position.connections.each do |pos|
			@conns.push(pos.split(" "))
		end

		@conns.each do |direction|
			puts "you can go to " + direction[0] + " if you move " + direction[1]
		end

	end

	def lookAroundfirst()
		puts "You wake up in what looks like a prison cell"
		@position.connections.each do |pos|
			@conns.push(pos.split(" "))
		end

		@conns.each do |direction|
			puts "you can go to " + direction[0] + " if you move " + direction[1]
		end
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
	lookAround
	end

	def interact(obj)
	#obj is an object	
	end

end

