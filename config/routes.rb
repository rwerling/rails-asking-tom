Rails.application.routes.draw do
  devise_for :users
  root to: "decisions#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :decisions do
    resources :options, only: [:new, :create]
  end
  resources :options, only: [:show, :destroy] do
    resources :arguments, only: [:new, :create]
  end
  resources :arguments, only: [:show, :destroy]
end
