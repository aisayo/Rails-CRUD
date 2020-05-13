Rails.application.routes.draw do

  resources :categories
  resources :locations
  get '/restaurants', to: 'restaurants#index'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/new', to: 'restaurants#new'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant' #dynamic 

  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  put '/restaurants/:id', to: 'restaurants#update'


  # resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#resources creates all 7 routes => follows the routing convention 
# don't use resource if you want to customize url, controller action mapped to 


#'users/register'
#customize url helper 