Rails.application.routes.draw do
  resources :orders
  resources :carts
  resources :products
  resources :categories
  root 'welcome#index'

  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { users: 'users/registrations' }

end
