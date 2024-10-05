Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments do
      resources :likes, only: [:create, :destroy]
    end
  end

end