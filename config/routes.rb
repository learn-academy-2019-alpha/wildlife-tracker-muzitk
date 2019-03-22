Rails.application.routes.draw do
  resources :sightings
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  root to: "animals#new"
end
