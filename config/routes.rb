Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :decisions do
    member do
      get 'decide'
    end
    resources :options, only: [:new, :create] do
      member do
        get 'ask'
        get 'score'
      end
    end
  end
  resources :options, only: [:show, :destroy] do
    resources :arguments, only: [:new, :create]
  end
  resources :arguments, only: [:show, :destroy]
end
