GlenJarvisCom::Application.routes.draw do
  resources :about, only: [:index]
  resources :recommendations, only: [:index]
  #get "search/results"

  root :to => 'about#index'
end
