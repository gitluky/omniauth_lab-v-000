class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth'][:info]
    user = User.find_or_create_by(email: auth_hash[:email])
    session[:user_id] = user.id
    redirect_to ''
  end

end
