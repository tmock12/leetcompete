Leetcompete::Application.routes.draw do
  root to: 'pages#index'
  resources :users, only: [:new, :create]
  resources :sessions
  get '/sign-out', to: 'sessions#destroy', as: :sign_out
end
