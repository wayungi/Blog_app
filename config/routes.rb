Rails.application.routes.draw do
  # List all users
  get 'user/users'

  # Show a single user
  get '/user/:id', to: 'user#user' 

  # Show all posts of a single user
  get 'user/:id/posts', to: 'user#user_posts'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
