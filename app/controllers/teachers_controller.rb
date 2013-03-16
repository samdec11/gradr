class TeachersController < ApplicationController
  def index
    @teachers = Teacher.order(:name)
  end
  def new
    @teacher = Teacher.new
  end
  def create
    @teacher = Teacher.create(params[:name])
    @teachers = Teacher.order(:name)
  end
end