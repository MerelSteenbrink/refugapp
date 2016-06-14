class Dashboard::HomeController < ApplicationController

  def index
    @user = current_user
  end

end
