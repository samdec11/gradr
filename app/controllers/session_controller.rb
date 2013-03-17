class SessionController < ApplicationController
  def new
  end
  def create
    teacher = Teacher.where(:email => params[:email]).first
    if teacher.present? && teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id
    else
      session[:teacher_id] = nil
    end
    authentication
    redirect_to(root_path)
  end
  def destroy
    session[:teacher_id] = nil
    @auth = nil
  end
end