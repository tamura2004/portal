Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :system_info_views
  resources :reservations
  resources :java_infos

  get "/reservations/new/:start_date", to: "reservations#new"
  get "/reservations/index/:baseDate", to: "reservations#index"

  root to: "reservations#index"

end
