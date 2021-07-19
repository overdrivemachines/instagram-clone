class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Allow username, first_name and last_name
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, :description, :website, :image, :image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :email, :description, :website, :image, :image_cache])
  end

end
