class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
  end

  def destroy
    current_user.destroy
    redirect_to root_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
