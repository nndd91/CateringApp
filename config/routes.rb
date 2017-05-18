Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index'

  get '/orders', to: 'orders#index'
  get '/orders/new', to: 'orders#new'

  get '/admin', to: 'admin#index'
  get '/menus', to: 'menus#index'
  get '/menus/new', to: 'menus#new'
  post '/menus', to: 'menus#create'

end
