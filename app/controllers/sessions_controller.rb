class SessionsController < ApplicationController
  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher && teacher.authenticate(params[:password])
    session[:user_id] = teacher.id
    session[:user_type] = "Teacher"
      redirect_to teachers_path, notice: "Successful log in"
    else
      redirect_to root_path, notice: "Not for you"
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
