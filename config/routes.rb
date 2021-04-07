Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  get 'home/about' => 'homes#about'
#質問
  post 'books' => 'books#create'
  post 'books' => 'books#index'
  post 'user/show' => 'books#create'
end
