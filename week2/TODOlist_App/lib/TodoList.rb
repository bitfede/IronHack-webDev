require_relative("Save.rb")
require 'yaml/store'


class TodoList
	include Save
    attr_reader :tasks
    def initialize(user)
    	@todo_store = YAML::Store.new("./public/tasks.yml")
        @tasks = []
        @user = user
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def delete_task(id)
			@tasks.delete_if do |task|
				task.id == id
			end    	
    end

    def find_task_by_id(id)
    	found = nil

    	@tasks.each do |task|
    		if (task.id == id)
    			found = task
    		end

  		end
    	found
    end

    def sort_by_created(order)
    	if (order == "ASC")
    	@tasks.sort! { |a,b| a.created_at <=> b.created_at }
    	elsif (order == "DESC")
    	@tasks.sort! { |a,b| b.created_at <=> a.created_at }
    	end
    end

end