class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :user_info

  def user_info
  	@user = current_user
  end
end
