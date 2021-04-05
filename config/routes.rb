Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :users, only: [:new, :create, :index, :show, :edit, :destroy]
  get 'books/index' => 'books#index'
  get 'books/show' => 'books#show'
  get 'books/new' => 'books#new'
  get 'books/edit' => 'books#edit'
end
