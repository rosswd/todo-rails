class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def show
	end

	def new
		@todo = Todo.new
	end

	def edit
	end

	def create
		@todo = Todo.new(todos_params)
		
		if @todo.save
		  redirect_to todos_path
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private
	  def todos_params
	  	params.require(:todo).permit(:title, :description)
	  end
end
