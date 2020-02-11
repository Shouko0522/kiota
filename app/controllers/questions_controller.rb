class QuestionsController < ApplicationController
  def show
    @step = params[:step].to_i
    render "questions/#{@step}"
  end

  # Finish next time
  # def update
  #   @step = params[:step].to_i
  #   current_user.update 
  # end
end
