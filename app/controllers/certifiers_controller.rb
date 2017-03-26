class CertifiersController < ApplicationController
  before_action :confirm_logged_in,  :only => [:edit, :update]
  before_action :confirm_admin_user,  :only=> [:new, :delete, :index]

  before_action :set_certifier, only: [:show, :edit, :update, :destroy]

  # GET /certifiers
  # GET /certifiers.json
  def index
    @certifiers = Certifier.all
  end

  # GET /certifiers/1
  # GET /certifiers/1.json
  def show
  end

  # GET /certifiers/new
  def new
    @certifier = Certifier.new
  end

  # GET /certifiers/1/edit
  def edit
  end

  # POST /certifiers
  # POST /certifiers.json
  def create
    @certifier = Certifier.new(certifier_params)

    respond_to do |format|
      if @certifier.save
        format.html { redirect_to @certifier, notice: 'Certifier was successfully created.' }
        format.json { render :show, status: :created, location: @certifier }
      else
        format.html { render :new }
        format.json { render json: @certifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certifiers/1
  # PATCH/PUT /certifiers/1.json
  def update
    respond_to do |format|
      if @certifier.update(certifier_params)
        format.html { redirect_to @certifier, notice: 'Certifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @certifier }
      else
        format.html { render :edit }
        format.json { render json: @certifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certifiers/1
  # DELETE /certifiers/1.json
  def destroy
    @certifier.destroy
    respond_to do |format|
      format.html { redirect_to certifiers_url, notice: 'Certifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def confirm_logged_in

    unless session[:user_id] #if session id is missing login message will be displayed
      flash[:notice] = "Please login in"
      redirect_to(access_login_path)
    end
  end

  private
  def confirm_admin_user

    unless session[:user_id]
      flash[:notice]  = "Please login in"
      redirect_to(admin_access_login_path)
    end

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certifier
      @certifier = Certifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certifier_params
      params.require(:certifier).permit(:certifier_id, :first_name, :last_name, :email, :benefit_assigned, :IsAvailable, :avatar, :letters_assigned)
    end
end
