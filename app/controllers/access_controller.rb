class AccessController < ApplicationController


  def login
  end

  def attempt_login
    if params[:username].present?  && [:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "Login Successful"
      redirect_to(student_visits_path)

    else

      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end
  end


  def logout

    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] =  "You are now logged out"
    redirect_to(access_login_path)

  end

end
