Rails.application.routes.draw do

  root 'posts#index'

  resources :users
  get 'posts/' => 'posts#index', as: :posts

  get 'posts/new' => 'posts#new', as: :new_post

  post 'posts/' => 'posts#create'

  get 'posts/:id' => 'posts#show', as: :post


  get 'posts/create' => 'posts#create', as: :posts_create

  get 'posts/:id/edit' => 'posts#edit', as: :post_edit

  patch 'posts/:id' => 'posts#update'

  # put 'posts/:id' => 'posts#update'

  delete 'posts/:id' => 'posts#destroy', as: :post_destroy

  get 'comments/' => 'comments#index', as: :comments

  get 'comments/show'

  get 'comments/new' => 'comments#new', as: :new_comment

  post 'comments/' => 'comments#create'

  get 'comments/edit'

  get 'comments/update'

  delete 'comments/:id' => 'comments#destroy', as: :comment_destroy


  # get 'users/index' => 'users#index', as: :products
  #
  # get 'users/show' => 'users#show', as :show
  #
  # get 'users/new' => ''
  #
  # get 'users/create'
  #
  # get 'users/edit'
  #
  # get 'users/update'
  #
  # get 'users/destroy'

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout
end
