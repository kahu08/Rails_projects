Rails.application.routes.draw do
  resources :news do
    resources :comments
  end
end
