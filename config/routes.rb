Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'dashboard#index'

  get '/properties', to: 'properties#index'
  get '/properties/:id', to: 'properties#show'

  get '/property_viewings_feed', to: 'property_viewings#feed'
  resources :property_viewings, only: [:show, :create]
  # get '/property_viewings/:id', to: 'property_viewings#show'
  # post 'property_viewings/:id', to: 'property_viewings#create', as: 'property_viewings_create'

  get '/questions/:step', to: 'questions#show', as: 'question'
  patch '/questions/:step', to: 'questions#update', as: 'question_update'

    scope '/reservations' do

    get '/new', to: 'reservations#new'
    post '/new', to: 'reservations#create'
    get '/confirm', to: 'reservations#confirm'
    post '/confirm', to: 'reservations#submit'

      resources :property do
        resources :reservations, only: [ :new, :create ]
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
