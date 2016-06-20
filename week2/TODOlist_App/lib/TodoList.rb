class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def delete_task(id)
			@tasks.delete_if do |task|
				task.id == id
			end    	
    end
end