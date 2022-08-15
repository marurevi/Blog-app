Rails.application.routes.draw do
  resources :users, only: [:index, :show]

  resources :users, shallow: true do
    resources :post, only: [:index, :show]
  end
end
