Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  get 'users/:id', to 'users#show', as: 'user'
  get 'users', to 'users#index', as: 'users'
  post 'users', to 'users#create', as: 'users'
  get 'users/new', to 'users#new', as: 'new_user'
  get 'users/:id/edit', to 'users#edit', as: 'edit_user'
  patch 'users/:id', to 'users#update', as: 'user'
  put 'users/:id', to 'users#update', as: 'user'
  delete 'users/:id', to 'users#destroy', as: 'user'
end
