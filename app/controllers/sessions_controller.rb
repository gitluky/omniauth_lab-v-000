class SessionsController < ApplicationController

  def create
    @auth = request.env['omniauth.auth']
    user = User.find_or_create_by(email: @auth[:info][:email])
    session[:user_id] = user.id
  end

end
