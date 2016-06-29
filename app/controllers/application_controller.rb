class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [
        :username,
        :description,
        :first_name,
        :last_name,
        :kind,
        :city,
        :photo,
        :photo_cache
      ]
      )
  end

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
  end

end
