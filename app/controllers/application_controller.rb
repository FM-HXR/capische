class ApplicationController < ActionController::Base
  before_action :config_permitted_params, if: :devise_controller?
  before_action :find_user

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end  
  end
  
  private
  def find_user
    @user = current_user
  end

  def config_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :preferences])
  end
end
