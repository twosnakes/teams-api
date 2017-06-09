Rails.application.routes.draw do
  
  namespace :v1 do

    get '/teams' => 'teams#index'
    post '/teams' => 'teams#create'
    get '/teams/:id' => 'teams#show'
    patch '/teams/:id' => 'teams#update'
    delete '/teams/:id' => 'teams#destroy'
  end
end


