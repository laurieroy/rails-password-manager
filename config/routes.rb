Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :passwords do
    resources :shares, only: %i[create new destroy]
  end

  # Defines the root path route ("/")
  root "passwords#index"
end
