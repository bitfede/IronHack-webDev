Rails.application.routes.draw do
  get '/' , to: 'site#home'

  get '/text_inspections/new', to: 'textinspections#new'

  post 'text_inspections/create', to: 'textinspections#create'

  get '/artii', to: 'artii#home'

  post 'newArt', to: 'artii#newart'

end
