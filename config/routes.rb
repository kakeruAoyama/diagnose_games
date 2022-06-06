Rails.application.routes.draw do
  get 'diagnoses/new'
  get 'diagnoses/index'
  resources :games
  root "games#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
