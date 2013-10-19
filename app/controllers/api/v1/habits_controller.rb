class Api::V1::HabitsController < ApplicationController
  respond_to :json

  def index
    respond_with Habit.all
  end

  def show
    respond_with Habit.find(params[:id])
  end

  def create
    @habit = Habit.create(habit_params)
    respond_with @habit, location: 'blah'
  end

  def destroy
    @habit = Habit.find(params[:id])
    respond_with @habit.update_attributes(habit_params)
  end

  def update
    @habit = Habit.find(params[:id])
    respond_with @habit.update_attributes(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end
end