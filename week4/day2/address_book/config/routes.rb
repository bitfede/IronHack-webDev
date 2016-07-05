Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index', to: 'contacts#index'
  get '/contacts', to: 'contacts#index'
  get '/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/show/:id', to: 'contacts#show'
end
