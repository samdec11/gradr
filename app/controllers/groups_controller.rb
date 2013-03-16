class GroupsController < ApplicationController
  def index
    @groups = @auth.groups.order(:name) if @auth.present?
  end
  def new
    @group = Group.new
  end
  def create
    @group = Group.create(params[:group])
    @groups = Group.order(:name)
  end
end