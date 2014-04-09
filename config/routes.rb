TestBench::Application.routes.draw do
  devise_for :users
  resources :apps
  resources :tests
  root :to => "apps#index"
end
