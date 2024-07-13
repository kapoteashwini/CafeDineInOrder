# config/routes.rb
Rails.application.routes.draw do
  namespace :admin do
    get 'menu_items/new'
    get 'menu_items/create'
    get 'menu_items/index'
  end
  root 'menu_items#index'
  
  resources :menu_items, only: [:index]
  resources :orders, only: [:index, :new, :create, :show, :update]
  resources :admin, only: [:index]

  namespace :admin do
    resources :menu_items, only: [:new, :create, :index]
  end


  patch 'orders/:id/mark_as_served', to: 'orders#mark_as_served', as: 'mark_as_served'
  patch 'orders/:id/generate_invoice', to: 'orders#generate_invoice', as: 'generate_invoice'
end
    