Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :blog_posts

  # Defines the root path route ("/")
  root "blog_posts#index"
end
