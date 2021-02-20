Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'welcome#index'
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users

  get 'help', to: 'welcome#help'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  get 'signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
end
