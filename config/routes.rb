Rails.application.routes.draw do
  resources :retros
  resources :details
  resources :tasks
  resources :activities
  resources :users
  resources :projects
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
