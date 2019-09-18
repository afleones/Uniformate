  class ApplicationController < ActionController::Base



  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nombre, :apellidos, :email, :telefono, :password, :tipo_documento_id, :documento, :email, :perfil)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :nombre, :apellidos , :telefono, :password, :tipo_documento_id, :current_password, :password_confirmation)}
  end
end
