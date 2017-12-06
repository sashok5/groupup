GroupUp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :events,    only: [:index, :my_events, :upcoming_events, :create]
  resources :relationships, only: [:create, :destroy]

  root to: 'pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'pages#help',    via: 'get'
  match '/about',   to: 'pages#about',   via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  match '/events',  to: 'events#index',        via: 'get'
  match '/myevents', to: 'events#userevents', via:'get'
  match '/upcomingevents', to: 'events#upcoming', via:'get'
  match '/attendingevents', to: 'events#attending', via:'get'
  match '/newevent', to: 'events#new', via:'get'
end
