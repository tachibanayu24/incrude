Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'

  root 'home#index'

  get 'user/signin'

  get 'user/signout' => 'sessions#destroy'

  get 'user/mypage' => 'user#mypage'

  get 'user/main' => 'user#main'

  post 'user/count' => 'user#count'

  post 'user/reset' => 'user#reset'

  get '/about' => 'home#about'

  get 'user/current_work_state' => 'user#current_work_state'

  get 'user/update_work_state' => 'user#update_work_state'

  # テストアカウントのログイン
  get 'sessions/testCreate' => 'sessions#testCreate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
