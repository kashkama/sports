Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  devise_for :coaches


  root :to => "home#index"
  resources :home, :only => [:index]

  resources :dashboard, :only => [:index, :show]

  resources :tournaments, :only =>[:index]

  resources :sports do
    resources :teams, :except =>[:index, :show]
  end
end
