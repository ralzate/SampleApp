Rails.application.routes.draw do
  root 'welcome#index'
  get 'help', to: 'welcome#help'
end
