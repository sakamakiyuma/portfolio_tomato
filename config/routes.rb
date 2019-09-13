Rails.application.routes.draw do
  get 'gallery/index'
  get "/" => "home#top"
  get "about" => "home#about"
end
