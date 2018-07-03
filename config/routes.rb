Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
  get 'calculator', to: 'pages#calculator'

  
  get '*path' => redirect('/')
end
