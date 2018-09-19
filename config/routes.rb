Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  namespace :api do
    resources :users, only: [:index, :show, :edit, :update, :destroy, :create]
    resources :locations, only: [:index, :new, :create, :show]
    resources :leaderboards, only: [:index, :create, :show]
    resources :sessions, only: [:create, :destroy]
    resources :user_locations, only: [:index, :show]
  end

end
