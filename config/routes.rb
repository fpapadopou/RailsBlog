Rails.application.routes.draw do
  # Add a new resource type, blogpost, representing blog posts.
  # Using the 'bin/rails routes' command translates the line below
  # to a list of default REST routes.
  resources :blogpost

  root 'index#index'
end
