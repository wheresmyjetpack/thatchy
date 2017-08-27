# frozen_string_literal: true
post '/sessions', to: 'sessions#create'

root to: 'home#index'

resources :books
