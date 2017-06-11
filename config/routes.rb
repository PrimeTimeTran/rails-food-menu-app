Rails.application.routes.draw do
  get 'review/show'

  get 'review/new'

  get 'review/create'

  resources :food_items do
    # food_items/:food_item_id/orders/new
      resources :orders
    end
  get 'menu' => 'home#menu'
  get 'contact_us' => 'home#contact_us'

  root 'home#index'
end
