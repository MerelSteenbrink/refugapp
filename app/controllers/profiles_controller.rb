class ProfilesController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path
    else
      render "edit"
    end
  end

  private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :provider, :uid, :picture, :first_name, :last_name, :token, :token_expiry, :username, :postal_code, :kind, :photo, :photo_cache, :description, :city)
  end
end
