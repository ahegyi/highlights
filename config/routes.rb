Highlights::Application.routes.draw do
  devise_for :users

  resources :highlights, only: [:create, :show, :index, :new]

  authenticated :user do
    root to: "highlights#index"
  end

  root :to => "home#index"
end
