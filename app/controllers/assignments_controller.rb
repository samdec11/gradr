class AssignmentsController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @assignments = @auth.groups.map(&:assignments)
  end
  def show
    @assignment = Assignment.find(params[:id])
    @groups = @assignment.groups.order(:created_at)
  end

  def new
    @assignment = Assignment.new
    @groups = @auth.groups
  end
  def create
    @assignment = Assignment.create(params[:assignment])
    @assignments = Assignment.order(:name)
  end
end