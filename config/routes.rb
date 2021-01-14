Rails.application.routes.draw do
  get 'flights/index'
  get 'flights/new'
  get 'flights/show'
  get 'flights/create'
  root 'flights#index'
  resources :flights, except: [:edit, :update, :destroy]
  resources :airports, except: [:edit, :update, :destroy]
end
