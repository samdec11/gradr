class GroupsController < ApplicationController
  def index
    # @groups = @auth.groups.order(:name) if @auth.present?
    # @groups = @groups.map{|group| group.name}
    @groups = Teacher.first.groups.order(:name)
    @groups = @groups.map{|group| group.name}
  end
  def show
    teacher = params[:teacher]
    @students = Student.where(teacher => @auth)
  end
  def new
    @group = Group.new
  end
  def create
    @group = Group.create(params[:group])
    @groups = Group.order(:name)
  end
end