class SessionsController < ApplicationController
    
  def initialize
    @user_service = UserService.new
  end

  def create
      @user = @user_service.oauth_login(auth_hash)
      session['user_id'] = @user.id
      redirect_to '/'
    end

    def logout
      session['user_id'] = nil
      redirect_to '/'
    end
  
    protected
  
    def auth_hash
      request.env['omniauth.auth']
    end

  end