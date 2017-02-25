module SessionsHelper
  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remeber_token(cookies[:remember_token])
  end

  def signed_in?
  !current_user.nil?
  end


end