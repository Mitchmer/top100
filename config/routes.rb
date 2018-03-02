Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'charts#index'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'

  resources :artists do
    resources :songs
  end
  
  resources :charts

end
