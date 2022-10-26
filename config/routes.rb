Rails.application.routes.draw do
  get 'posts/new'
  # temporarly root
  root 'user#users'

  # List all users
  get 'user/users'

  # Show a single user
  get '/user/:id', to: 'user#user' 

  # Show all posts of a single user
  get 'user/:id/posts', to: 'user#user_posts'

  # Show a single post
  get 'user/:user_id/posts/:id', to:'user#user_post'

  #==================  posts routes=======
  get 'posts/new', to: 'posts#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
