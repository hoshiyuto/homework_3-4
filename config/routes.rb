Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/show'
  devise_for :users
  root to: "homes#about"

  resources :books, only: [:new, :index, :show, :create, :destroy]

  get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
