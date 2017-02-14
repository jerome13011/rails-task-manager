class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
# GET /restaurants
    @tasks = Task.all
  end
  def show
  # GET /restaurants/:id
  end
  def new
  # GET /restaurants/new
    @task = Task.new

  end
  def create
  # POST /restaurants
    @task = Task.new(user_params)
    @task.save
    redirect_to tasks_path
  end
  def edit

   # GET /restaurants/:id/edit
  end
  def update
  # PATCH /restaurants/:id
    @task.update(user_params)
    redirect_to tasks_path
   end
  def destroy
  # DELETE /restaurants/:id
    @task.destroy
    redirect_to tasks_path
  end

  private

  def user_params
    params.require(:task).permit(:name, :description, :done)
  end

   def set_task
    @task = Task.find(params[:id])
  end

end
