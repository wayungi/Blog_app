class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  # protect_from_forgery prepend: true

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
  end
  # def current_user
  #   @user = User.first
  # end
end
