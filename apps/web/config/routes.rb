# frozen_string_literal: true
get '/sign_up', to: 'users#new'
get '/sign_in', to: 'sessions#new'
post '/sessions', to: 'sessions#create'

root to: 'home#index'

resources :books
resources :users, only: [:create]
