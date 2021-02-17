Rails.application.routes.draw do
  root 'welcome#index'
  get 'ayuda', to: 'welcome#help'
  get 'nosotros', to: 'welcome#about'
  get 'contactanos', to: 'welcome#contact'
end
