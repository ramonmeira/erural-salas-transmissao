Rails.application.routes.draw do
  get "/", to: "pages#index"
  get 'salas/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end