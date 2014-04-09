TestBench::Application.routes.draw do
  devise_for :users
  resources :apps
  resources :tests
  root :to => "tests#index"
end
