Rails.application.routes.draw do
  resources :jobs
  resources :postulation
  devise_for :users

  root 'pages#index'
  get 'pages/index'
  get 'pages/empleos'
  get 'pages/vista_empleos'
  get 'pages/list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
