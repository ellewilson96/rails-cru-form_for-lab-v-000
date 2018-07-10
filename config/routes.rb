Rails.application.routes.draw do
  resources :songs, only: [:new, :create, :show, :update, :edit, :destroy]
  resources :genres, only: [:new, :create, :show, :update, :edit, :destroy]
  resources :artists, only: [:new, :create, :show, :update, :edit, :destroy]
end
