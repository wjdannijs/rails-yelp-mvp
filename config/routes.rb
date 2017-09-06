Rails.application.routes.draw do
  # get 'reviews/new'

  # get 'reviews/create'
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [ :show, :edit, :update, :destroy ]

  get "restaurants/:restaurant_id/reviews", to: "reviews#index"

  namespace :admin do
    resources :restaurants, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
