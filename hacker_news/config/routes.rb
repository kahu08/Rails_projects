Rails.application.routes.draw do


  resources :users
  resources :sessions
  root :to => 'news#index'
  resources :news do
    resources :comments
  end
end
