Rails.application.routes.draw do
  get 'users/new', to: 'users#new'

  post 'users/new', to: 'users#create'

  get 'users/login', to: 'sessions#new'

  post 'users/login', to: 'sessions#create'

  get '/users', to: 'users#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
