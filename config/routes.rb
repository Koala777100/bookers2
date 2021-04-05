Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :users
  resources :books

  get 'home/about' => 'homes#about'
#質問
  post 'books' => 'books#create'
  post 'user/show' => 'books#create'
end
