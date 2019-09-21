Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "gallery" => "gallery#index"
  get "gallery/new" => "gallery#new"
  # get "gallery/:id"  => "gallery#show"
  post "gallery/create" => "gallery#create"
  # post '/gallery/create', to: 'gallery#create'

  get "/" => "home#top"
  get "about" => "home#about"
end
