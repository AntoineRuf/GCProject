class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nom
    devise_parameter_sanitizer.for(:sign_up) << :prenom
    devise_parameter_sanitizer.for(:sign_up) << :promotion
    devise_parameter_sanitizer.for(:sign_up) << :tel
    devise_parameter_sanitizer.for(:sign_up) << :is_admin

    devise_parameter_sanitizer.for(:account_update) << :nom
    devise_parameter_sanitizer.for(:account_update) << :prenom
    devise_parameter_sanitizer.for(:account_update) << :promotion
    devise_parameter_sanitizer.for(:account_update) << :tel
    devise_parameter_sanitizer.for(:account_update) << :is_admin
  end
end
