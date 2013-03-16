class HomeController < ApplicationController
  def index
    redirect_to (groups_path) if @auth.present?
  end
end