Rails.application.routes.draw do
  get 'main/index'
  get 'body/index'
  get 'body/new'
  get 'talk/index'
  get 'talk/new'
  get 'talk/create'
  get 'chat/index'
  get 'talk/learn'
  get 'home/index'
  resources :body
  root 'main#index'
  resources :posts
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' =>"comments#update"
  devise_for :users
end