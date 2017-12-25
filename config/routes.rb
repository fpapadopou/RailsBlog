Rails.application.routes.draw do
  # Add a new resource type, blogpost, representing blog posts.
  # Using the 'bin/rails routes' command translates the line below
  # to a list of default REST routes.
  # Since each post can have multiple comments bound to it,
  # the block defines the relation between the two models.
  resources :blogpost do
    resources :comment
  end

  root 'index#index'
end
