class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :resource_name
  def resource_name
    if user_signed_in?
      current_user.name
    else
      :user
    end
  end

end
