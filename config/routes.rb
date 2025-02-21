Rails.application.routes.draw do
  resources :wrestlers
  resources :weight_classes, only: [:index, :show, :create, :destroy]

  #since defining route using resources, i dont need to manually redefine the statements

  # get '/weight_classes' => 'weight_classes#index'
  # get '/weight_classes/:id' => 'weight_classes#show'
  # post '/weight_classes' => 'weight_classes#create'
  # patch '/weight_classes/:id' => 'weight_classes#update'
  # delete '/weight_classes/:id' => 'weight_classes#destroy'

  # get '/wrestlers' => '/wrestlers#index'
  # get '/wrestlers/:id' => '/wrestlers#show'
  # post '/wrestlers' => '/wrestlers#create'
  # patch '/wrestlers/:id' => '/wrestlers#update'
  # delete '/wrestlers/:id' => '/wrestlers#destroy'
end
