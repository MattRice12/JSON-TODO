Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tasks', to: 'tasks#index'
  get '/lists', to: 'lists#index'

  get '/tasks/:id', to: 'tasks#show'
  get '/lists/:id', to: 'lists#show'

  post '/tasks', to: 'tasks#create'
  post '/lists', to: 'lists#create'

  put '/tasks/:id', to: 'tasks#update'
  put '/lists/:id', to: 'lists#update'

  delete '/tasks/:id', to: 'tasks#destroy'
  delete '/lists/:id', to: 'lists#destroy'

end
