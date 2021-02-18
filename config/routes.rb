Rails.application.routes.draw do
  root 'welcome#index'
  get 'help', to: 'welcome#help'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  get 'sign_up', to: 'users#new'
end
