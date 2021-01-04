Rails.application.routes.draw do
  resources :city_bs
  resources :city_as
  root to: 'pages#home'
  #get '/deposition', to: 'pages#deposition'
  resources :depositions, only: [:create, :index, :new, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
