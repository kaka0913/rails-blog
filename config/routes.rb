Rails.application.routes.draw do
  root "users#new"

  resources :articles do
    resources :comments do
      resources :likes, only: [:create, :destroy]
    end
  end

  resources :users, only: [:new, :create, :show, :edit, :update]
end