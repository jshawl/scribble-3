Rails.application.routes.draw do

  root to: 'posts#index'
    get '/comments', to: 'comments#index'
    resources :posts do
      resources :comments
    end




end
