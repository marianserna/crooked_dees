class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to appointments_url
    else
      flash[:alert] = "Incorrect email or password"
      render :new
    end
  end

  #log out
  def destroy
    # way 1
    # session[:user_id] = nil

    # way 2
    session.clear
    redirect_to root_url
  end
end
