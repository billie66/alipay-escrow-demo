Rails.application.routes.draw do
  resources :orders
  resources :courses
  root 'courses#index'
end
