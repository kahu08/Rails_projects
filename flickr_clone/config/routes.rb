Rails.application.routes.draw do
root to: 'photos#index'

  resources :users

  resources :photos do
    resources :comments
  end
end
