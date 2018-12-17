class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role, :bio, :avatar, :purrs])
  end

  def enforce_volunteer_colony
    current_path = request.original_url
    if current_user&.role == 'volunteer' && current_user&.colonies.count == 0
      flash[:warning] = "You must join a colony first!"
      redirect_to colonies_path
    end
  end
end
