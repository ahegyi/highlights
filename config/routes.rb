Highlights::Application.routes.draw do
  devise_for :users

  resources :highlights, only: [:create, :show, :index, :new]
  resources :users, only: [:show]

  authenticated :user do
    root to: "highlights#index"
  end

  root :to => "home#index"
end
