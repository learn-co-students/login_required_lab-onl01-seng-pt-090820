Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'sessions#new', as: 'login'
post '/login', to: 'sessions#create'
get '/secrets', to: 'secrets#show'
delete '/logout', to: 'sessions#destroy'
end
