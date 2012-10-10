Leetcompete::Application.routes.draw do
  root to: 'pages#index'
  resources :users, only: [:new, :create]
  resources :sessions
end
