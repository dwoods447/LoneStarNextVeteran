class SearchStudentsController < ApplicationController
 layout 'kiosk'
  def  findStudent

    if @foundStudent = Student.where(:student_id => params[:student_id]).first

      session[:student_id] = @foundStudent[:student_id]
      session[:first_name] = @foundStudent[:first_name]
      session[:last_name] = @foundStudent[:last_name]
      session[:email] = @foundStudent[:email]
      redirect_to(confirm_student_index_path)

    else
      flash[:notice] = "No student record found for: #{params[:student_id]}  Please go back and choose First Time Visitor."
      redirect_to(search_students_index_path)
    end

  end
end
