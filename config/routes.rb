Rails.application.routes.draw do
  root to: "places#index"
  devise_for :users

  resources :places do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:index, :show, :edit, :update, :destroy]
end
