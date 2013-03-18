class GroupsController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @groups = @auth.groups.order(:name) if @auth.present?
    @student = Student.new
  end
  def new
    @group = Group.new
    @students = Student.all
  end
  def create
    @group = Group.new(params[:group])
    if @group.save
      @groups = @auth.groups.order(:name)
    end
  end
end