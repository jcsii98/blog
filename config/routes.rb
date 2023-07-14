Rails.application.routes.draw do
  root 'articles#index'

  resources :posts

  
  resources :articles do
    resources :comments
  end

  

  # # localhost:3000/articles
  # get '/articles' => 'articles#index' 
  # get '/articles/new' => 'articles#new', as: 'new_article'
  # get '/articles/:id' => 'articles#show', as: 'show_article'

  # get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'

  # # localhost:3000/articles/new
  # post '/articles' => 'articles#create', as: 'create_article'
  
  # patch '/articles/:id' => 'articles#update', as: 'update_article'

  # delete '/articles/:id' => 'articles#delete', as: 'delete_article'
end