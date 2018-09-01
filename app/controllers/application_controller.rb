class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :empleador?
  def empleador?
    current_user && current_user.role == "empleador"
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :rut, :cellphone, :role])
  end
end
