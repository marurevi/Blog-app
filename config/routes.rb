Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:index, :show]

  resources :users do
    resources :posts, only: [:index, :show]
  end
end
