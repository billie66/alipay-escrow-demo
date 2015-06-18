Rails.application.routes.draw do
  resources :orders
  resources :cups
  get "/orders/done" => "orders#done"
  post "/orders/alipay_notify" => "orders#alipay_notify"
  root 'cups#index'
end
