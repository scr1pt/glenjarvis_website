GlenJarvisCom::Application.routes.draw do
  get 'about' => 'static_pages#about'
  get 'search_results' => 'static_pages#search_results'

  root :to => 'static_pages#about'
end
