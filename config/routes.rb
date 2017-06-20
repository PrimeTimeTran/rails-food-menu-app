Rails.application.routes.draw do
  devise_for :users

  resources :orders
  resources :food_items do
    # food_items/:food_item_id/orders/new
      resources :reviews
    end
  get 'menu' => 'home#menu'
  get 'contact_us' => 'home#contact_us'

  root 'home#index'
end
