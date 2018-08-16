class HomeController < ApplicationController
  before_action :current_user
  def index
    user = User.all()
    @sumCount = 0
    user.each do |user|
      @sumCount += user.count
    end
  end

  def about
  end

  def current_user
   return unless session[:user_id]
   @current_user ||= User.find(session[:user_id])
 end
end
