class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except:[:top, :about]

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email])

  end

  private
  def after_sign_up_path_for(resource)
    flash[:notice] = "Welcome! You have signed up successfully."
  end
  def after_sign_in_path_for(resource)
    books_path
  end

  def after_sign_out_path_for(resource)
    flash[:notice] = "Signed out successfully."
    root_path
  end

end
