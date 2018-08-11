Rails.application.routes.draw do
  
  devise_for :users
  namespace :api do
    resources :locations, only: [:index, :new, :create, :show]
    resources :leaderboards, only: [:index, :create, :show]

  end

end
