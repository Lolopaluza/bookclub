Rails.application.routes.draw do
  devise_for :users

  resources :centuries
  resources :profiles

  resources :posts do
    resources :comments, module: :posts
  end

  resources :happenings do
    resources :comments, module: :happenings
  end

  resources :written_importances do
    resources :comments, module: :written_importances
  end

  post '/likes' => 'likes#create', as: :like_create
  post '/dislikes' => 'likes#dislike', as: :dislike_create

  root 'home#index'
end
