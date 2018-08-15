Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'

  root 'home#index'

  get 'user/signup'

  get 'user/signin'

  get 'user/signout', to: 'sessions#destroy'

  get 'user/mypage' => 'user#mypage'

  get 'user/reset'

  get 'user/main' => 'user#mypage'

  get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
