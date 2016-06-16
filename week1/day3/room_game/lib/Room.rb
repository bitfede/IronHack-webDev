class Room 
	attr_accessor :name, :description, :connections
	def initialize(roomName, description, connections)
		@name = roomName
		@description = description
		#store how the room is connected to what
		@connections =  connections
		@obj = []
	end

	def populateObj(objects)
		#populate the room with objects
		@obj = objects.map do |e|  
			objects
		end
	end


end