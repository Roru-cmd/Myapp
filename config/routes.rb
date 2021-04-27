Rails.application.routes.draw do
  # root 'users#index'
  root 'users#home'

  resources :tickets

  resources :tasks
  get "tasks/new" => "tasks#new"
  get "tasks/:id/edit" => "tasks#edit"
  post "tasks/create" => "tasks#create"
  post "tasks/:id/update" => "tasks#update"
  post "tasks/:id/destroy" => "tasks#destroy"


  resources :users  
  #get 'users/index'
  get 'users/home'  
  get "/" => "users#home"   
  post "users/:id/destroy" => "users#destroy"
  get "users/:id/tickets" => "users#tickets"
  get "users/:id/today" => "users#today"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :users do
    resources :tasks
    resources :tickets
  end

end
