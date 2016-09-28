Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rooms, only: [:new, :create, :show, :index]
  root 'rooms#index'
  mount ActionCable.server => '/cable'
end
