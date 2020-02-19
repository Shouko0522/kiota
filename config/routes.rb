Rails.application.routes.draw do
  resources :articles
  get 'property_viewings/show'
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboard#show'
  get '/properties', to: 'properties#index'
  get '/properties/:id', to: 'properties#show'

  get '/property_viewings_feed', to: 'property_viewings#feed'
  get '/property_viewings/:id', to: 'property_viewings#show'

  get '/questions/:step', to: 'questions#show', as: 'question'
  patch '/questions/:step', to: 'questions#update', as: 'question_update'

  scope '/reservations' do

  get '/new', to: 'reservations#new'
  post '/new', to: 'reservations#create'
  get '/confirm', to: 'reservations#confirm'
  post '/confirm', to: 'reservations#submit'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
