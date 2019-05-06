Rails.application.routes.draw do
  
  resources :user_workouts
  resources :workouts
  resources :users

  post '/login', to: 'auth#login', as: 'login'
  post '/myworkouts', to: 'user_workouts#myworkouts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
