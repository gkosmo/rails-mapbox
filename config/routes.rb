Rails.application.routes.draw do
  get 'movies/index'

  resources :mushrooms
  root to: 'mushrooms#index'
  resources :movies, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
