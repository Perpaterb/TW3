Rails.application.routes.draw do
     
  get 'admin', to: 'pages#admin', as: 'admin'
  get 'home', to: 'pages#home', as: 'home'
  get 'sell', to: 'pages#sell', as: 'sell'
  get 'history', to: 'pages#history', as: 'history'

  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
