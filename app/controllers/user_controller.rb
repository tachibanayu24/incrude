class UserController < ApplicationController
  before_action :current_user, :const_work_state, :current_work_state
  # after_action :work_state
  def signup
  end

  def signin
  end

  def signout
  end

  def mypage
  end

  def reset
    @current_user.count = 0
    @current_user.save
    redirect_to("/user/mypage")
  end

  def main
  end

def count
  @current_user.count += 1
  @current_user.save
  redirect_to("/user/mypage")
end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def const_work_state
    @work_state0 = "あなたはまだ労働スタンプを押していません"
    @work_state1 = "嫌味な同期を倒しました"
    @work_state2 = "仕事中に感情が爆発して大暴れしました"
    @work_state3 = "会社のお金を着服して豪遊しました"
    @work_state4 = "怖い上司を倒しました"
    @work_state5 = "高圧的な取引先を爆破しました"
    @work_state6 = "パワハラ社長を倒しました"
    @work_state7 = "会社を爆破しました"
    @work_state8_or_up = "また会社を爆破しました"

    @work_state0_sub = "労働のよろこびを感じたら、スタンプを押しましょう！"
    @work_state1_sub = "労働環境が改善されました！"
    @work_state2_sub = "無駄な飲み会に誘われなくなりました！"
    @work_state3_sub = "お金をより有効に使いました！"
    @work_state4_sub = "ストレス要因が1つ減りました！"
    @work_state5_sub = "非効率な営業に行かなくてよくなりました！"
    @work_state6_sub = "社員全体に大きな刺激を与えました！"
    @work_state7_sub = "ブラック企業を消し去りました！"
    @work_state8_or_up_sub = "明日も会社を爆破しましょう！"

    @work_state_img0 = "work_state0.png"
    @work_state_img1 = "work_state1.png"
    @work_state_img2 = "work_state2.png"
    @work_state_img3 = "work_state3.png"
    @work_state_img4 = "work_state4.png"
    @work_state_img5 = "work_state5.png"
    @work_state_img6 = "work_state6.png"
    @work_state_img7 = "work_state7.png"
    @work_state_img8_or_up = "work_state8_or_up.png"
  end

  def current_work_state
    if    @current_user.count == 0 then
      @work_msg = @work_state0
      @work_msg_sub = @work_state0_sub
      @work_state_img = @work_state_img0
    elsif @current_user.count == 1 then
      @work_msg = @work_state1
      @work_msg_sub = @work_state1_sub
      @work_state_img = @work_state_img1
    elsif @current_user.count == 2 then
      @work_msg = @work_state2
      @work_msg_sub = @work_state2_sub
      @work_state_img = @work_state_img2
    elsif @current_user.count == 3 then
      @work_msg = @work_state3
      @work_msg_sub = @work_state3_sub
      @work_state_img = @work_state_img3
    elsif @current_user.count == 4 then
      @work_msg = @work_state4
      @work_msg_sub = @work_state4_sub
      @work_state_img = @work_state_img4
    elsif @current_user.count == 5 then
      @work_msg = @work_state5
      @work_msg_sub = @work_state5_sub
      @work_state_img = @work_state_img5
    elsif @current_user.count == 6 then
      @work_msg = @work_state6
      @work_msg_sub = @work_state6_sub
      @work_state_img = @work_state_img6
    elsif @current_user.count == 7 then
      @work_msg = @work_state7
      @work_msg_sub = @work_state7_sub
      @work_state_img = @work_state_img7
    else
      @work_msg = @work_state8_or_up
      @work_msg_sub = @work_state8_or_up_sub
      @work_state_img = @work_state_img8_or_up
    end
  end

  def update_work_state
    @current_user.count += 1
    @current_user.save

    if  @current_user.count == 0 then
      @work_msg = @work_state0
      @work_msg_sub = @work_state0_sub
    elsif @current_user.count == 1 then
      @work_msg = @work_state1
      @work_msg_sub = @work_state1_sub
    elsif @current_user.count == 2 then
      @work_msg = @work_state2
      @work_msg_sub = @work_state2_sub
    elsif @current_user.count == 3 then
      @work_msg = @work_state3
      @work_msg_sub = @work_state3_sub
    elsif @current_user.count == 4 then
      @work_msg = @work_state4
      @work_msg_sub = @work_state4_sub
    elsif @current_user.count == 5 then
      @work_msg = @work_state5
      @work_msg_sub = @work_state5_sub
    elsif @current_user.count == 6 then
      @work_msg = @work_state6
      @work_msg_sub = @work_state6_sub
    elsif @current_user.count == 7 then
      @work_msg = @work_state7
      @work_msg_sub = @work_state7_sub
    else
      @work_msg = @work_state8_or_up
      @work_msg_sub = @work_state8_or_up_sub
    end
  end
end