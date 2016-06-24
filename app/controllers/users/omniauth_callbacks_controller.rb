class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in @user
      if @user.username == nil
        redirect_to edit_profile_path, notice: 'Signed in succesfully'
        set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      elsif @user.username != nil
        redirect_to root_path, notice: 'Signed in succesfully'
        set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      else
        session['devise.facebook_data'] = request.env['omniauth.auth']
        redirect_to new_user_registration_url
      end
    end
  end
end
