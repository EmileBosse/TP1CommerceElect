Rails.application.routes.draw do
  resources :employeurs
  resources :etudes
  resources :institutions
  resources :etats_civils
  resources :enfants
  resources :clients
  resources :adresses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
