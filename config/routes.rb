Rails.application.routes.draw do

  resources :users,only:[:show,:edit,:update]
  root to: "homes#top"
  devise_for :users

  resources :postlmages,only:[:new,:destroy,:create,:index,:show]

  get "homes/about",as:"about"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
