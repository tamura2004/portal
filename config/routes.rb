Rails.application.routes.draw do

  resources :users
  resources :user_sessions
  resources :system_info_views
  resources :reservations
  resources :java_infos

  get "/reservations/new/:start_date", to: "reservations#new"
  get "/reservations/index/:baseDate", to: "reservations#index"

  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'

  get "login" => "user_sessions#new", as: :login
  get "logout" => "user_sessions#destroy", as: :logout
  get "signin" => "users#new"

  root to: "user_sessions#new"


end
