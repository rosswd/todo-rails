class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todos = Todo.order(:updated_at).page params[:page]
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(todos_params)

    if @todo.save
      flash[:notice] = 'Todo added successfully!'
      redirect_to todos_path
    else
      flash[:notice] = 'Todo NOT created!'
      render 'new'
    end
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todos_params)
      flash[:notice] = 'Todo successfully updated!'
      redirect_to todos_path
    else
      flash[:notice] = 'Todo NOT updated!'
      render 'edit'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.destroy
      flash[:notice] = 'Todo successfully deleted!'
      redirect_to todos_path
    else
      flash[:notice] = 'Todo not deleted. Try again.'
    end
  end

  private
  def todos_params
    params.require(:todo).permit(:title, :description)
  end
end
