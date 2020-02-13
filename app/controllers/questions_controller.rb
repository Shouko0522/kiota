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
      :price, 
      :location, 
      :pets, 
      :distance_to_park, 
      :distance_to_supermarket, 
      :floor, 
      :tatami, 
      :distance_to_station, 
      :age,
      :size)
  end
end
