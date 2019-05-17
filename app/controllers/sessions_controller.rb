class SessionsController < ApplicationController

  def create
    binding.pry
    @auth = request.env['omniauth.auth']
    user = User.find_or_create_by(email: @auth[:info][:email], name: @auth[:info][:name])
    session[:user_id] = user.id
  end

end
