Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/show', to: 'secrets#show'
  # get 'new', to: 'sessions#new'
  # post 'create', to: 'session#create'
  resource :sessions
  # root 'new', to: 'sessions#new'
end
