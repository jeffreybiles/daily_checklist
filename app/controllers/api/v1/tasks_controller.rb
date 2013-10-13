class Api::V1::TasksController < ApplicationController
  respond_to :json

  def index
    respond_with Task.all
  end

  def show
    respond_with Task.find(params[:id])
  end

  def create
    @task = Task.create(params[:task].permit(:title, :details))
    respond_with @task, location: 'blah'
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end