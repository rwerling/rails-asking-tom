Rails.application.routes.draw do
  devise_for :users
  root to: "decisions#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :decisions do
    resources :options, only: [:new, :create] do
      resources :arguments, only: [:new, :create]
    end
  end
  resources :arguments, only: [:destroy]
end
