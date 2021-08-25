Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  devise_for :users
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, except: [:new] do
    resources :book_comments, only: [:create, :destroy]
  end

end
