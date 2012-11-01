Leetcompete::Application.routes.draw do
  root to: 'pages#index'

  resources :users, only: [:new, :create] do
    resources :competitions, controller: 'users/competitions'
  end

  resources :sessions
  resources :competitions, only: :show

  get '/sign-out', to: 'sessions#destroy', as: :sign_out
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
end
