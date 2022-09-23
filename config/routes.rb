Rails.application.routes.draw do

  resources :users, only:[:show,:edit,:update]
  root to: "homes#top"
  devise_for :users


  resources :postlmages, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  get "/homes/about" => "homes#about", as: "about"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
