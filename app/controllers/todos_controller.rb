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
	end

	def update
	end

	def destroy
	end
end
