FortuneApp::Application.routes.draw do
  resources :fortunes, only: :index
  root :to => 'fortune#index'
end
