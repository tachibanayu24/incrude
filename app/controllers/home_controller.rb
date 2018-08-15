class HomeController < ApplicationController
  before_action :current_user
  def index
  end

  def about
  end

  def current_user
   return unless session[:user_id]
   @current_user ||= User.find(session[:user_id])
 end
end
