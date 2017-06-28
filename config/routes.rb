Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  root 'posts#index'

  resources :users
  get 'posts/' => 'posts#index', as: :posts

  get 'posts/new' => 'posts#new', as: :new_post

  post 'posts/' => 'posts#create'

  get 'posts/:id' => 'posts#show', as: :post


  get 'posts/create' => 'posts#create', as: :posts_create

  get 'posts/edit'

  get 'posts/update'

  get 'posts/destroy'



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
