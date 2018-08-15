Rails.application.routes.draw do
  get 'user/signup'

  get 'user/signin'

  get 'user/signout'

  get 'user/mypage' => 'user#mypage'

  get 'user/reset'

  get 'user/main' => 'user#mypage'

  get '/' => 'home#index'

  get '/about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
