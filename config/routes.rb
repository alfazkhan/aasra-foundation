Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/the-master-controller', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'join', to:'pages#join'
  #get 'donate', to:'pages#donate'
  get 'projects', to:'pages#project'
  get 'volunteers', to:'pages#volunteer'
  post 'volunteers', to:'volunteer#create'
  get 'help-us', to:'pages#help'
  get 'error', to:'pages#error'




end
