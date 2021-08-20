# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root 'salas#index', as: 'home'

  get '/about', to: 'pages#about', as: 'about'
  
  resources :salas do
    resources :videos
  end
end
