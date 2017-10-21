class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if logged_in?
  end

  # make current user available in views
  helper_method :current_user

  # is there a value in session id
  def logged_in?
    session[:user_id].present?
  end

  helper_method :logged_in?
end
