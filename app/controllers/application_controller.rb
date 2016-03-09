class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private def authenticate
    if session[:teacher_id].nil?
      redirect_to admin_login_path, notice: "Nice try"
    end
  end
end
