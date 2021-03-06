Rails.application.routes.draw do
  root to: "home#template_index"
  
  resources :users
  resources :schools
  
  # Sessions
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
