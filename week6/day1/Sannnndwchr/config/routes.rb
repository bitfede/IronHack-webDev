Rails.application.routes.draw do


  resources :ingredients
  resources :sandwiches, except: [:new, :edit]

  post '/sandwiches/:id/ingredients/add' => 'sandwiches#createIngredient'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
