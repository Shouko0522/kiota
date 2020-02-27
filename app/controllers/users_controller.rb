class UsersController < ApplicationController
  def update
    @user = current_user
    # raise
    @user.update(user_params)
    redirect_to profile_path
  end

  def edit
    @user = current_user
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(
      :registration_card_number,
      :first_name,
      :last_name,
      :dob,
      :address,
      :start_date,
      :phone_number,
      :salary,
      :employer_name,
      availability: {}
      )
  end
end
