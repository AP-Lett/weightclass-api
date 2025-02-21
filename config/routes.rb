Rails.application.routes.draw do
  get '/weight_classes' => 'weight_classes#index'
  get '/weight_classes/:id' => 'weight_classes#show'
  post '/weight_classes' => 'weight_classes#create'
  patch '/weight_classes/:id' => 'weight_classes#update'
  delete '/weight_classes/:id' => 'weight_classes#destroy'

  get '/wrestlers' => '/wrestlers#index'
  get '/wrestlers/:id' => '/wrestlers#show'
  post '/wrestlers' => '/wrestlers#create'
  patch '/wrestlers/:id' => '/wrestlers#update'
  delete '/wrestlers/:id' => '/wrestlers#destroy'
end
