GroupUp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :events,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'pages#help',    via: 'get'
  match '/about',   to: 'pages#about',   via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
end
