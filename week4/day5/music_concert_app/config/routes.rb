Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'concerts#home'

  resources :concerts, only: [:show, :new, :create, :index]

end
