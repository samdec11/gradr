class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication
  private
  def authentication
    @auth = Teacher.find(session[:teacher_id]) if session[:teacher_id].present?
  end
  def ensure_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end
