class AdminAccessController < ApplicationController

  before_action :confirm_admin_user,  :except => [:login, :attempt_login, :logout]
  def login

  end

  def attempt_login
    if params[:username].present?  && [:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end


    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "Login Successful"
      redirect_to(admin_users_path)

    else

      flash[:notice] = "Invalid username/password combination."
      render('login')
    end
  end


  def logout

    session[:user_id] = nil
    flash[:notice] =  "You are now logged out"
    redirect_to(admin_access_login_path)

  end


  private

  def confirm_admin_user

    unless session[:user_id]
      flash[:notice]  = "Please login in"
      redirect_to(admin_access_login_path)
    end

  end


end
