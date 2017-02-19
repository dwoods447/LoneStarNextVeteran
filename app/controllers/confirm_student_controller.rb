class ConfirmStudentController < ApplicationController

  layout 'kiosk'


  def index
    @student_id = session[:student_id]
    @student_first_name = session[:first_name]
    @student_last_name = session[:last_name]
    @student_email  = session[:email]
  end
end
