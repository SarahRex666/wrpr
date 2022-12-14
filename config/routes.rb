Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :recipients
  resources :gifts
  resources :sessions

  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"
  root "welcome#index"



  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
