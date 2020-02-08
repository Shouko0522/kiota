Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'dashboard#show'
  get '/properties', to: 'properties#show'
  resources :properties only: [:show]

  scope '/reservations' do

  get '/new', to: 'reservations#new'
  post '/new', to: 'reservations#create'
  get '/confirm', to: 'reservations#confirm'
  post '/confirm', to: 'reservations#submit'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
