Rails.application.routes.draw do
  get 'places/index'
  get 'places/new'
  get 'places/create'
  get 'places/edit'
  get 'places/update'
  get 'places/show'
  get 'places/dstroy'
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
