Rails.application.routes.draw do
  
  devise_for :users
  get 'home/index'

  get 'home/visitor', as: "visitor"

  resources :companies

   
  root 'home#index'
  
  get '/search' => 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
