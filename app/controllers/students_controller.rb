class StudentsController < ApplicationController
  before_action :confirm_admin_user,  :only => [:index]
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  layout 'kiosk', :except => [:index]



  # GET /students
  # GET /students.json
  def index
    @username = session[:username]
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @new_student_id = session[:student_id]
  end

  # GET /students/new
  def new

    @student = Student.new
    @student.build_campus
    @student.build_federal_benefit
    @student.build_state_benefit

    session[:student_id] =  params[:student_id]

    @new_student_id = session[:student_id]
  end

  # GET /students/1/edit
  def edit
    @new_student_id = session[:student_id]
  end



  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Please review your information for accuracy.' }

      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Information was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def confirm_admin_user

    unless session[:user_id]
      flash[:notice]  = 'Please login'
      redirect_to(admin_access_login_path)
    end

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:student_id, :campus_id, :first_name, :last_name, :phone_number, :email, :federal_benefit_id, :state_benefit_id)
    end
end
