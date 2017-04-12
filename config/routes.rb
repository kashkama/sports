Rails.application.routes.draw do
  get 'tournaments/index'

  devise_for :users
  devise_for :admins
  get 'dashboard/index'

  get 'dashboard/show'
  root :to => "home#index"
  get 'home/index'

  resources :teams
  resources :sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
