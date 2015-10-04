Rails.application.routes.draw do

  devise_for :users

  resources :system_info_views
  resources :reservations
  resources :java_infos

  get "/reservations/new/:start_date", to: "reservations#new"
  get "/reservations/index/:baseDate", to: "reservations#index"

  root to: "reservations#index"

end
