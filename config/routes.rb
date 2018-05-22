Rails.application.routes.draw do

  root 'months#index'

  resources :hotels, only: %i[index show]

  resources :cities, only: %i[index]

  resources :countries, only: %i[index]

  resources :months, only: %i[index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
