class SessionsController < ApplicationController
  def create
    if params[:user_type] == 'Teacher'
    teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
      session[:user_id] = teacher.id
      session[:user_type] = "Teacher"
        redirect_to teachers_path, notice: "Successful log in"
      end
    elsif params[:user_type] == 'Parent'
      parent = Parent.find_by_email(params[:email])
      if parent && parent.authenticate(params[:password])
        session[:user_id] = parent.id
        session[:user_type] = "Parent"
        redirect_to students_path, notice: "Successful log in"
      end
    elsif params[:user_type] == 'Student'
      student = Student.find_by_email(params[:email])
      if student && student.authenticate(params[:password])
        session[:user_id] = student.id
        session[:user_type] = "Student"
        redirect_to student_path, notice: "Successful log in"
      end
    else
      flash.now[:alert] = 'Failed'
      render 'new'
     end
  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to root_path, notice: "Logged out"
  end

  def new
  end
end
