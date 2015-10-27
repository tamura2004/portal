Rails.application.routes.draw do

  resources :javas

  namespace :admin do
    root "top#index"
  end

  namespace :staff do
    root "top#index"
  end

  namespace :user do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

end
