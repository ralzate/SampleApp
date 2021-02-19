Rails.application.routes.draw do
  root 'welcome#index'
  resources :users

  get 'help', to: 'welcome#help'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  get 'signup', to: 'users#new'
  post '/signup',  to: 'users#create'

end
