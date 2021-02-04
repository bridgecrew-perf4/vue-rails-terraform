Rails.application.routes.draw do
  resources :users do
  resources :exercises, :exercise_menus, :meals, :meal_menus, :users, :weights
  end  
end
