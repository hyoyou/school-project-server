Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    resources :users, only: [:edit, :update, :destroy, :show, :index]
    resources :locations, only: [:index, :new, :create, :show]
    resources :leaderboards, only: [:index, :create, :show]

    post "/signup", to: "users#signup"
    post "/login", to: "sessions#login"
    get "/logout", to: "sessions#logout"

  end

end
