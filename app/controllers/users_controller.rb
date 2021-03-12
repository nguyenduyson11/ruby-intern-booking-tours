class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "register_success"
      redirect_to users_path
    else
      flash[:danger] = t "register_error"
      redirect_to signup_path
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :phone_number, :password,
                                 :password_confirmation
  end
end
