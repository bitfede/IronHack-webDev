require 'yaml/store'


module Save
	def save(location)
			@todo_store = YAML::Store.new(location)
		  @todo_store.transaction do 
	    @todo_store[@user] = @tasks
	  end
	end
end