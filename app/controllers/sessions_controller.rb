class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    @user = current_user
    pages_path
  end
end
