class AdminSearchStudentsController < ApplicationController

   def search_student
     if @student_found = Student.where(:student_id => params[:student_id]).first
       session[:student_id] = @student_found[:student_id]
       session[:first_name] = @student_found[:first_name]
       session[:last_name] = @student_found[:last_name]
       session[:email] = @student_found[:email]
       flash[:notice] = "Student record found for: #{params[:student_id]}"
       redirect_to(admin_path)

     else
       flash[:notice] = "Student ID: #{params[:student_id]} does not exist in the database"
       redirect_to(admin_path)
     end
   end
end
