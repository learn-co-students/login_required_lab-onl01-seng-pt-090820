Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "application#welcome"

  get '/new', to: "sessions#new", as: "new"
  post '/sessions', to: "sessions#create"
  post "/", to: "sessions#destroy", as: "logout"

  get "/secrets", to: "secrets#show"
end
