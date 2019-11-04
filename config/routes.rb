Rails.application.routes.draw do
  devise_for :users
  root to: 'groups#index'
  #root to: 'users#index'
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
