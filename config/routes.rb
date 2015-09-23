Rails.application.routes.draw do

  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'

  resources :reservations
  resources :java_infos

  get "/reservations/new/:startDate", to: "reservations#new"
  get "/reservations/index/:baseDate", to: "reservations#index"

  root to: "reservations#index"
  resources :users
  resources :user_sessions

  get "login" => "user_sessions#new", as: :login
  get "logout" => "user_sessions#destroy", as: :logout

end
