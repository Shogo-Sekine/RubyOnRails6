Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :mycontacts
  get 'messages/index'
  get 'messages', to: 'messages#index'
  
  get 'messages/add'
  post 'messages/add', to: 'messages#create'
  
  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'
  
  get 'messages/delete/:id', to: 'messages#delete'
  get 'messages/:id', to: 'messages#show'

  get 'cards/index'
  get 'cards', to: 'cards#index'
  
  get 'cards/add'
  post 'cards/add'
  
  get 'cards/:id', to: 'cards#show'
  
  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'
  
  get 'cards/delete/:id', to: 'cards#delete'

  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/find'
  post 'people/find'
  get 'people/add'
  post 'people/add', to: 'people#create'
  get 'people/:id', to: 'people#show'
  get 'people/edit/:id', to: 'people#edit'
  post 'people/edit/:id', to: 'people#update'
  patch 'people/edit/:id', to: 'people#update'
  get 'people/delete/:id', to: 'people#delete'

  get 'msgboard', to: 'msgboard#index'
  post 'msgboard', to: 'msgboard#index'

  get 'msgboard/index'
  post 'msgboard/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'

  post 'hello/index'
  post 'hello', to: 'hello#index'
end
