Rails.application.routes.draw do
  resources :clients, only: [:show]
  resources :gyms, only: [:show, :destroy]
  resources :memberships, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
