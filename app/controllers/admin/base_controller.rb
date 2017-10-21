class Admin::BaseController < ApplicationController
  before_action :require_logged_in
  before_Action :require_admin_user

  def require_admin_user
    if !current_user.is_admin?
      flash[:alert] = "Sorry, you are not authorized."
      redirect_to root_url
    end
  end
end
