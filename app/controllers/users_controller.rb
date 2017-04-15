class UsersController < ApplicationController

  before_action :confirm_admin_user,  :only => [:index, :delete, :edit]

  def index
    @username = session[:username]
    @users = User.all
  end

  def new
    @username = session[:username]
    @user = User.new
  end


  def show
    @username = session[:username]
    @user = User.find(params[:id])
  end

   def edit
     @username = session[:username]
    @user = User.find(params[:id])
   end


  def create
    @username = session[:username]
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }

      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @username = session[:username]
    respond_to do |format|
      @user = User.find(params[:id])
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @username = session[:username]
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
  private
  def confirm_admin_user

    unless session[:user_id]
      flash[:notice]  = 'Please login'
      redirect_to(admin_access_login_path)
    end

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:user_id, :first_name, :last_name, :email, :username, :password)
  end
end
