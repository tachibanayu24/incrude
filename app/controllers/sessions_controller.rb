class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    flash[:notice] = "ユーザー認証が完了しました。"
    redirect_to('/user/mypage')
  end

# テストアカウントへのログインアクション
  def testCreate
    user = User.new(id: 8)
    session[:user_id] = user.id
    flash[:notice] = "ユーザー認証が完了しました。"
    redirect_to('/user/mypage')
  end

  def destroy
    reset_session
    flash[:notice] = "サインアウトしました。"
    redirect_to root_path
  end
end