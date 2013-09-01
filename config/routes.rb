GlenJarvisCom::Application.routes.draw do
  get "static_pages/about"

  root :to => 'static_pages#about'
end
