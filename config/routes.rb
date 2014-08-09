BrittanyMarieSite::Application.routes.draw do
  resource :home, only: :index
  resources :projects, only: :show

  root to:  'home#index'

end
