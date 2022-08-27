Rails.application.routes.draw do
  devise_for :users, defaults: { format: :html },
                         controllers: {
                         sessions: 'users/sessions'
                        }
  
  get 'sign_in', to: 'users/sessions#new'
  root 'users#index'
  resources :users, only: [:index, :show]

  resources :users, only: [:index, :show, :new, :create] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create]
    end
  end
  
  namespace :api do
    resources :users, only: [] do
      resources :posts, only: [:index], format: :json do
        resources :comments, only: [:index, :create], format: :json
      end
    end
  end
end
