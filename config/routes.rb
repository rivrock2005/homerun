Rails.application.routes.draw do
  resources :reviews
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users
  resources :products do
    resources :comments
  end
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:index, :show, :create, :destroy]
  post 'simple_pages/thank_you'


end
