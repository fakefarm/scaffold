Rails.application.routes.draw do
  resources :notes
  resources :retros
  resources :tasks
  resources :activities
  resources :users
  resources :projects
  resources :products
end
