Rails.application.routes.draw do

  get '/items', to: 'items#index'
  post '/items', to: 'items#create'
  get '/items/new', to: 'items#new'
  get '/items/:id', to: 'items#show', as: 'item' #dynamic 

  get '/items/:id/edit', to: 'items#edit'
  patch '/items/:id', to: 'items#update'
  put '/items/:id', to: 'items#update'


  # resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#resources creates all 7 routes => follows the routing convention 
# don't use resource if you want to customize url, controller action mapped to 


#'users/register'
#customize url helper 