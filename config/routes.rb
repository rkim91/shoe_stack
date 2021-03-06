Rails.application.routes.draw do
  get 'sessions/new'
  resources :user_shoes
  resources :brands
  resources :shoe_stores
  resources :shoes
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'\

  delete '/shoes/:id/remove', to: 'shoes#remove', as: 'remove_shoe'

end
