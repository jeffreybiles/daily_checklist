class Api::V1::RepetitionsController < ApplicationController
  respond_to :json

  # this will probably change to just showing for a specific day
  def index
    respond_with Repetition.all
  end

  def show
    respond_with Repetition.find(params[:id])
  end

  def update
    @repetition = Repetition.find(params[:id])
    respond_with @repetition.update_attributes(repetition_params)
  end

  private

  def repetition_params
    params.require(:repetition).permit(:completed)
  end
end