Rails.application.routes.draw do
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  post '/login', to: "sessions#destroy"
  get '/secret', to: "secrets#show"
end