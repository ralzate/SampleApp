Rails.application.routes.draw do
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


end
