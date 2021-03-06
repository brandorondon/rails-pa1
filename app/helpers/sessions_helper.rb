module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    return @current_user ||= User.find_by_id(session[:user_id])
  end
end
