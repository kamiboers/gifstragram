Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :destroy]
  # resources :gifs, only: [:show, :index]
  resources :favorite_gifs, only: [:create, :destroy]

  # scope :module => 'admin' do
    resources :categories
    resources :gifs
  # end
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
