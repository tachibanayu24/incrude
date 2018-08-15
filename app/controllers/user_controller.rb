class UserController < ApplicationController
  before_action :current_user
  def signup
  end

  def signin
  end

  def signout
  end

  def mypage
  end

  def reset
  end

  def main
  end


  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

end