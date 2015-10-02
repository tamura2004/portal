Rails.application.routes.draw do

  resources :users
  resources :user_sessions

  resources :system_info_views
  resources :reservations
  resources :java_infos

  get "/reservations/new/:start_date", to: "reservations#new"
  get "/reservations/index/:baseDate", to: "reservations#index"

  get "login" => "user_sessions#new", as: :login
  post "logout" => "user_sessions#destroy", as: :logout

end
