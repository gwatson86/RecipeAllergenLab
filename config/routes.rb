Rails.application.routes.draw do
  resources :recipe_ingredients, only:[:new, :create]
  resources :users, only:[:index, :show, :new]
  resources :recipes, only:[:index, :show, :new, :create]
  resources :ingredients, only:[:index, :show, :new]
end
