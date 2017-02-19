class StudentVisitsController < ApplicationController
  before_action :set_student_visit, only: [:show, :edit, :update, :destroy]

  layout 'kiosk', :only => [:new]

  # GET /student_visits
  # GET /student_visits.json
  def index
    @this_staff_member = Certifier.where(:certifier_id => params[:certifier_id]).first

    @student_visits = StudentVisit.where(created_at: Time.parse("8:00am")..Time.parse("11:30pm")).where(:isSignedin => true)
    #@student_visits_count  = StudentVisit.where(created_at: Time.parse("8:00am")..Time.parse("11:30pm")).where(:isSignedin => true).count
    @current_staff = Certifier.where(:IsAvailable => true)

    @all_staff = Certifier.all
  end

  # GET /student_visits/1
  # GET /student_visits/1.json
  def show
    @show_student_id = session[:student_id]
    @current_staff = Certifier.where(:IsAvailable => true)
    @all_staff = Certifier.all
  end

  # GET /student_visits/new
  def new

    @return_student_id = session[:student_id]
    @new_student_id = session[:student_id]
    @student_visit = StudentVisit.new

    @current_staff = Certifier.where(:IsAvailable => true)

    @all_staff = Certifier.all
  end

  # GET /student_visits/1/edit
  def edit
    @edit_student_id = session[:student_id]
    @current_staff = Certifier.where(:IsAvailable => true)

    @all_staff = Certifier.all
  end

  # POST /student_visits
  # POST /student_visits.json
  def create
    @all_staff = Certifier.all
    @current_staff = Certifier.where(:IsAvailable => true)
    @student_visit = StudentVisit.new(student_visit_params)


    respond_to do |format|
      if @student_visit.save
        format.html { redirect_to @student_visit, notice: 'Student visit was successfully created.' }
        format.json { render :show, status: :created, location: @student_visit }


        session[:student_id] = nil
        session[:first_name] = nil
        session[:last_name] = nil
        session[:email] = nil
      else
        format.html { render :new }
        format.json { render json: @student_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_visits/1
  # PATCH/PUT /student_visits/1.json
  def update
    @current_staff = Certifier.where(:IsAvailable => true)
    @all_staff = Certifier.all
    respond_to do |format|
      if @student_visit.update(student_visit_params)
        format.html { redirect_to @student_visit, notice: 'Student visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_visit }
      else
        format.html { render :edit }
        format.json { render json: @student_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_visits/1
  # DELETE /student_visits/1.json
  def destroy
    @current_staff = Certifier.where(:IsAvailable => true)
    @all_staff = Certifier.all
    @student_visit.destroy
    respond_to do |format|
      format.html { redirect_to student_visits_url, notice: 'Student visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_visit
      @student_visit = StudentVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_visit_params
      params.require(:student_visit).permit(:student_id, :certifier_id, :isSignedin, :service_requested)
    end
end
