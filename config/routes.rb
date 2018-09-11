Rails.application.routes.draw do

  #devise_for :users
  namespace :api do
    resources :users, only: [:index, :show, :update, :destroy, :create]
    resources :locations, only: [:index, :new, :create, :show]
<<<<<<< HEAD
    resources :leaderboards, only: [:index, :create, :show]
    resources :sessions, only: [:create, :destroy]
=======
    resources :user_locations, only: [:index, :show]
>>>>>>> Leaderboard

    post "/signup", to: "users#signup"
    post "/login", to: "sessions#login"
    get "/logout", to: "sessions#logout"


  end

end
