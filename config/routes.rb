Rails.application.routes.draw do
  root 'sessions#new'
  get '/driver', to: 'login#new'

  resources :sessions, :login, only: [:new, :create, :destroy]
  resources :order, :stock, :mobile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
