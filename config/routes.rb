Rails.application.routes.draw do
  root "users#new"

  resources :articles do
    resources :comments do
      resources :likes, only: [:create, :destroy]
    end
  end

  resources :users, only: [:new, :create, :show, :edit, :update]

  get "signin", to: "users#signin_form"
  post "signin", to: "users#signin"
  delete "signout", to: "users#signout"
end