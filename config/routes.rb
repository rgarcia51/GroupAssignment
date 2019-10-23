Rails.application.routes.draw do
Infectionscaffold
  resources :infections
  resources :diseases
master
  resources :animals
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
