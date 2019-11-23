class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    if session[:user_id].nil?
      @current_user = nil
      return nil
    end

    return @current_user unless @current_user.nil?
    @current_user = User.find(session[:user_id])
  end

  def admin?
    current_user.present? && current_user.role == 'admin'
  end
end
