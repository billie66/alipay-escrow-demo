Rails.application.routes.draw do
  resources :orders
  resources :courses
  get "/orders/done" => "orders#done"
  post "/orders/alipay_notify" => "orders#alipay_notify"
  root 'courses#index'
end
