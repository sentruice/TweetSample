class HomeController < ApplicationController
  before_action :authenticate_user!, only: :show
  def index
  end

  def show
    @user = User.find_by(:username => current_user[:username])
  end
end
