Rails.application.routes.draw do
  devise_for :users

  root 'accounts#index'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'
  get '/songs/new', to: 'songs#new'

  resources :artists do
    resources :songs
  end

  resources :charts
  resources :accounts

end
