BrittanyMarieSite::Application.routes.draw do
  resource :home, only: :index

  root to:  'home#index'
end
