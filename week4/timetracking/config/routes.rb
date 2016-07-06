Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'site#home'
  get '/contacts', to: 'site#contacts'
  get '/projects', to: 'projects#index'
  get '/projects/new', to: 'projects#new'
	get '/projects/show/:id', to: 'projects#show'

	post '/projects', to: 'projects#create'
	
end