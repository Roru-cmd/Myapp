Rails.application.routes.draw do
  resources :tickets
  resources :tasks
  resources :users
  
  get 'users/index'
  get "/" => "users#home"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :users do
    resources :tasks
    resources :tickets
  end

end
