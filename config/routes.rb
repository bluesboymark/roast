Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/' => 'posts#index', as: :posts

  get 'posts/:id' => 'posts#show', as: :post

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/destroy'


  resources :user
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
