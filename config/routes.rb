Rails.application.routes.draw do
  devise_for :users
  resources "contacts", only: [:new, :create]

  resources :books do
    resources :reviews
  end
  
  root 'books#index'
end
