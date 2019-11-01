Rails.application.routes.draw do
  root "home#top"
  get 'contact' => "contact#index"
  get 'news' => "news#index"

  get 'works' => "works#index"
  get 'works/new' => "works#new"
  post 'works/create' => "works#create"
  get "works/:id" => "works#show"
  get "works/:id/edit" => "works#edit"
  post "works/:id/update" => "works#update"
  post "works/:id/destroy" => "works#destroy"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "gallery1" => "gallery#index1"
  get "gallery2" => "gallery#index2"
  get "gallery3" => "gallery#index3"
  get "gallery/new" => "gallery#new"
  post "gallery/create" => "gallery#create"
  get "gallery/:id" => "gallery#show"
  get "gallery/:id/edit" => "gallery#edit"
  post "gallery/:id/destroy" =>"gallery#destroy"
  post "gallery/:id/update" => "gallery#update"

  get "/" => "home#top"
  get "about" => "home#about"
  get "management" => "home#management"
end
