Rails.application.routes.draw do
  get 'user/users'
  get '/user/:id', to: 'user#user' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
