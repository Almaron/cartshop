Cartshop::Application.routes.draw do

  get "tags/create"
  get "tags/destroy"
  get "/auth/github" => "sessions#new", as: :login
  get '/auth/:provider/callback', to: 'sessions#create'
  delete "logout" => "sessions#destroy", as: :logout

  resources :sections
  resources :categories do
    resources :items
  end

  root "sections#index"
end
