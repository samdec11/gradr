class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication
  private
  def authentication
    @auth = Teacher.find(session[:teacher_id]) if session[:teacher_id].present?
  end
end
