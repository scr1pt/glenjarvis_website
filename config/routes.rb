GlenJarvisCom::Application.routes.draw do
  resources :templates

  resources :about, only: [:index]
  get "search/results"

  root :to => 'about#index'
end
