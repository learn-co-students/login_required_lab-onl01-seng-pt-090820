Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :secret, action: :show, controller: 'secrets' 
  get :login, action: :new, controller: 'sessions'
  post :login, action: :create, controller: 'sessions'
  post :destroy, action: :destroy, controller: 'sessions'
end
