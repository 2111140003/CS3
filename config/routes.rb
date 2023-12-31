Rails.application.routes.draw do
  get 'sessions/new'
  root 'users#new'
  resource :user, only: [:new,:create,:show]
  get 'login',to: "sessions#new"
  post 'login',to: "sessions#create"
  get 'logout',to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
