GlenJarvisCom::Application.routes.draw do
  resources :about, only: [:index]
  get 'search_results' => 'static_pages#search_results'


  root :to => 'about#index'
end
