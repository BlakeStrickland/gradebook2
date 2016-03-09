class AdminController < ApplicationController
  def login
    if request.post?
    teacher = Teacher.find_by(email: params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = teacher.id
        redirect_to teachers_path, notice: "Log in successful"
      else
        flash[:notice] = "You stink at remembering your password. try 'monkey'."
      end
    end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to admin_login_path, notice: "See ya soon"
  end
end
