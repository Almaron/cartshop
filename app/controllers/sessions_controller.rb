class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_provider(request.env['omniauth.auth'].to_hash)
    session[:current_user] = user.id
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
