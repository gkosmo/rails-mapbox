Rails.application.routes.draw do
  resources :mushrooms
  root to: 'mushrooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
