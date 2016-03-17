BrittanyMarieSite::Application.routes.draw do
  resource :home, only: :index
  resources :projects, only: :show
  resources :contacts, only: :create

  root to:  'home#index'

end
