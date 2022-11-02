Rails.application.routes.draw do
  get 'comments/new'
  resources :posts 
  resources :comments
  resources :likes, only: [:create, :destroy]
  get 'posts/new'


  # temporarly root
  root 'users#index'

  # Show a single user
  get '/users/:id', to: 'users#show' 

  # Show all posts of a single user
  get 'users/:id/posts', to: 'users#user_posts'

  # Show a single post
  get 'users/:user_id/posts/:id', to:'users#user_post'

  #==================  posts routes=======
  get 'posts/new', to: 'posts#new'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
