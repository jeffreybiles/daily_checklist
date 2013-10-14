class Api::V1::TasksController < ApplicationController
  respond_to :json

  def index
    respond_with Task.all
  end

  def show
    respond_with Task.find(params[:id])
  end

  def create
    @task = Task.create(task_params)
    respond_with @task, location: 'blah'
  end

  def destroy
    @task = Task.find(params[:id])
    respond_with @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end