class StudentsController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @students = Student.order(:name)
  end
  def new
    @student = Student.new

  end
  def create
    @student = Student.create(params[:student])
    @students = Student.order(:name)
  end
  def show
    @student = Student.find(params[:id])
  end
end