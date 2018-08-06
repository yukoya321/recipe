Rails.application.routes.draw do
   root 'index#index'
   
   get '/search/', to: 'search#index', as: 'search'
   
   get '/post', to: 'post#index', as: 'posts'
   post '/post', to: 'post#create'
   get '/post/:id', to: 'post#show', as: 'show_post'
   delete '/post/:id', to: 'post#destroy', as: 'destroy_post'
   
   get '/tag', to: 'tag#index', as: 'tags'
   post '/tag', to: 'tag#create'
   delete '/tag/:id', to: 'tag#destroy', as: 'destroy_tag'
   
   get '/foodstuff', to: 'foodstuff#index', as: 'foodstuffs'
   post '/foodstuff', to: 'foodstuff#create'
   delete '/foodstuff/:id', to: 'foodstuff#destroy', as: 'destroy_foodstuff'
end
