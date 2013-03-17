class TeachersController < ApplicationController
  def index
    @teachers = Teacher.order(:name)
  end
  def new
    @teacher = Teacher.new
  end
  def create
    @teacher = Teacher.new(params[:teacher])
    if @teacher.save
      @teachers = Teacher.order(:name)
    end
  end
end