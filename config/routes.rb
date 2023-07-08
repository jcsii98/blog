Rails.application.routes.draw do
  resources :posts
  resources :articles
  root 'articles#index'
  # # localhost:3000/articles

  # get '/articles' => 'articles#index' 
  # get '/articles/new' => 'articles#new', as: 'new_article'
  

  # get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'

  # # localhost:3000/articles/new
  # post '/articles' => 'articles#create', as: 'create_article'
  # get '/articles/:id' => 'articles#show', as: 'show_article'
  # patch '/articles/:id' => 'articles#update', as: 'update_article'

  # delete '/articles/:id' => 'articles#delete', as: 'delete_article'
end