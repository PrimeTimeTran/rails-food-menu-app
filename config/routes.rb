Rails.application.routes.draw do
  resources :food_items do
    # food_items/:food_item_id/orders/new
      resources :orders
    end
  get 'home/search' => 'home#search'
  
  get 'menu' => "home#menu"
  get 'contact_us' => "home#contact_us"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
