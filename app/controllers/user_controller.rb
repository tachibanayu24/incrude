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
    if    @current_user.count == 0 then
      @work_msg = "0日目"
      @work_msg_sub = "0日目サブ"
    elsif @current_user.count == 1 then
      @work_msg = "1日目"
      @work_msg_sub = "1日目サブ"
    elsif @current_user.count == 2 then
      @work_msg = "2日目"
      @work_msg_sub = "2日目サブ"
    elsif @current_user.count == 3 then
      @work_msg = "3日目"
      @work_msg_sub = "3日目サブ"
    elsif @current_user.count == 4 then
      @work_msg = "4日目"
      @work_msg_sub = "4日目サブ"
    elsif @current_user.count == 5 then
      @work_msg = "5日目"
      @work_msg_sub = "5日目サブ"
    elsif @current_user.count == 6 then
      @work_msg = "6日目"
      @work_msg_sub = "6日目サブ"
    else
      @work_msg = "7日目以上"
      @work_msg_sub = "7日目サブ以上"
    end
  end

def count
  redirect_to("/user/mypage")
end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

end