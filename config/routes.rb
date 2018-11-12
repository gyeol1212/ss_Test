Rails.application.routes.draw do
  
  devise_for :users
  get 'home/index'

  get 'home/visitor', as: "visitor"

  get '/companies/:id/states/government' => 'state#government', as: "government"
  get '/companies/:id/states/award' => 'state#award', as: "award"
  get '/companies/:id/states/fund' => 'state#fund', as: "fund"
  get '/companies/:id/states/press' => 'state#press', as: "press"
  get '/companies/:id/states/achievement' => 'state#achievement', as: "achievement"
  get '/companies/:id/states/monthly' => 'state#monthly', as: "monthly"
  get '/companies/:id/states/plan/:category' => 'state#plan', as: "plan"
  get '/companies/:id/states' => 'state#index', as: "state"

  post '/governments' => 'state#create_government'
  post '/awards' => 'state#create_award' 
  post '/funds' => 'state#create_fund' 
  post '/presses' => 'state#create_press' 
  post '/achievements' => 'state#create_achievement'
  post '/plans' => 'state#create_plan'

  resources :companies
   
  root 'home#index'
  
  get '/search' => 'companies#index'

  get '/manage' => 'home#manage', as: "manage"
  put '/manage/:id' => 'home#permit', as: "permit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
