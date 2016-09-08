Rails.application.routes.draw do
  root :to => 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :logins, :only => [:new, :create, :destroy]
  resources :users
  resources :stories
end
