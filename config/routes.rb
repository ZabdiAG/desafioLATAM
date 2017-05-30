Rails.application.routes.draw do
  resources :products
  root 'welcome#index'

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :products do
    member do
      get 'buy'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
