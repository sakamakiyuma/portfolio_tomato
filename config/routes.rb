Rails.application.routes.draw do
  get "gallery" => "gallery#index"
  get "gallery/new" => "gallery#new"
  # get "gallery/:id"  => "gallery#show"
  post "gallery/create" => "gallery#create"
  
  
  # post '/gallery/create', to: 'gallery#create'

  get "/" => "home#top"
  get "about" => "home#about"
end
