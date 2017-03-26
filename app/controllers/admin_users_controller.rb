class AdminUsersController < ApplicationController
  before_action :confirm_admin_user, :only => [:index]
  def index
    @username = session[:username]
  end

  def new

  end

  def edit
  end

  def delete
  end


  private
  def confirm_admin_user
    unless session[:user_id]
      flash[:notice]  = "Please login in"
      redirect_to(admin_access_login_path)
    end
  end

end
