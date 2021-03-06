Rails.application.routes.draw do
  root to: 'users#new'
  resource :users, only: [:new, :create]
  put "users/:id" => "users#update"
  get "users/:id/edit" => "users#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
