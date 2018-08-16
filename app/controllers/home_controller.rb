class HomeController < ApplicationController
  before_action :current_user
  def index
    user = User.all()
# 労働日数の総和カウント
    @sumCount = 0
    user.each do |user|
      @sumCount += user.count
    end
# 同期・上司・社長を倒した回数
  @sumKill = 0
    user.each do |user|
      if user.count >= 6
        @sumKill += 3
      elsif 0 == (user.count % 7)
      elsif (1 <= (user.count % 7)) && (3 >= (user.count % 7))
        @sumKill += 1
      elsif (4 <= (user.count % 7)) && (5 >= (user.count % 7))
        @sumKill += 2
      else
      end
    end
# 会社を爆破した回数
  @sumBomb = 0
    user.each do |user|
      if user.count >= 7
        @sumBomb += user.count - 6 + 1
      elsif user.count >= 5
        @sumBomb += 1
      else
      end
    end
  end

  def about
  end

  def current_user
   return unless session[:user_id]
   @current_user ||= User.find(session[:user_id])
 end
end
