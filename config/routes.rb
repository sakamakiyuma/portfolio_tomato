Rails.application.routes.draw do
  get 'contact' => "contact#index"
  get 'news' => "news#index"

  get 'works' => "works#index"
  get 'works/new' => "works#new"
  post 'works/create' => "works#create"
  get "works/:id" => "works#show"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "gallery" => "gallery#index"
  get "gallery/new" => "gallery#new"
  post "gallery/create" => "gallery#create"
  get "gallery/:id" => "gallery#show"
  get "gallery/:id/edit" => "gallery#edit"
  post "gallery/:id/destroy" =>"gallery#destroy"

  get "/" => "home#top"
  get "about" => "home#about"
end
