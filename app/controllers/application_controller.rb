class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def initialize
    super
    @user_service = UserService.new
  end

  def index
  end

  def current_user
    @current_user ||= @user_service.find(session['user_id']) if session['user_id']
  end

  def logged_in?
    if current_user != nil
      true
    else
      false
    end
  end

  def require_login
    unless logged_in?
      flash[:error] = "Voce precisa estar autenticado"
      redirect_to '/'
    end
  end

  helper_method :current_user, :logged_in?, :require_login

end
