class QuestionsController < ApplicationController
  def show
    @step = params[:step].to_i
    @user = current_user
    render "questions/#{@step}"
  end

  # Finish next time
  def update
    @step = params[:step].to_i
    @user = current_user
    if @user.update(strong_params)
      redirect_to question_path(@step + 1)
    else
      render "questions/#{@step}"
    end
  end

  private
  def strong_params
    params.require(:user).permit(
      :min_price,
      :max_price,
      :desired_location,
      :work_location,
      :pets, 
      :wants_park_nearby, 
      :wants_supermarket_nearby, 
      :wants_first_floor, 
      :tatami, 
      :wants_station_nearby,
      :age,
      :layout
      )
  end
end
