Homewrkr::Application.routes.draw do
 root :to => 'home#index'
 resources :students, :assignments
 get '/login' => 'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'
end
