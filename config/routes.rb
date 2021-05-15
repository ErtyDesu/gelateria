Rails.application.routes.draw do
  resources :gelatis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'gelatis#index'
end
