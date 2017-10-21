class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "#{@user.name} has been saved!"
      # Log user in
      session[:user_id] = @user.id
      redirect_to appointments_path
    else
      flash[:alert] = "Please fix errors"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :password)
  end

end
