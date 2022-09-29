Rails.application.routes.draw do
  resources :places do
    resources :reservations
  end
  # get 'places'
  # get 'places/new'
  # post 'places'
  # get 'places/:id/edit'
  # patch 'places/:id'
  # get 'places/:id'
  # delete 'places/:id'
  get 'users/:id', to: 'users#show'
  devise_for :users
  root to: "places#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
