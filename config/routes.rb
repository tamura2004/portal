Rails.application.routes.draw do


  get "hi", controller: "hello", action: "world"

  namespace :admin do
    root "top#index"
  end

  namespace :staff do
    root "top#index"
    resources :javas
  end

  namespace :user do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

end
