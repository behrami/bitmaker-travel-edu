Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'favourites/index'

  get 'favourites/new'

  get 'favourites/create'

  get 'favourites/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  root 'months#index'

  resources :months, only: %i[index] do
    resources :countries, only: %i[index]
  end

  resources :countries, only: %i[index] do
    resources :cities, only: %i[index]
  end

  resources :cities, only: %i[index] do
    resources :hotels, only: %i[index show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
