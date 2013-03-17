class GroupsController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @groups = @auth.groups.order(:name) if @auth.present?
  end
  def show
    group = Group.find(params[:id])
    @students = group.students
  end
  def new
    @group = Group.new
  end
  def create
    @group = Group.create(params[:group])
    @groups = Group.order(:name)
  end
end