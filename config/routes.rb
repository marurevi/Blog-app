Rails.application.routes.draw do
  resources :users, only: [:index, :show]

  resources :users do
    resources :posts, only: [:index, :show]
  end
end
