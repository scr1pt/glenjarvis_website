GlenJarvisCom::Application.routes.draw do
  get "static_pages/about"
  get "static_pages/search_results"

  root :to => 'static_pages#about'
end
