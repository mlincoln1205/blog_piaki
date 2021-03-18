Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles
  get 'about', to: 'pages#about'
  get 'gen_content', to: 'pages#gen_content'
  get 'how_coop', to: 'pages#how_coop'
  get 'basic_guide', to: 'pages#basic_guide'
end
