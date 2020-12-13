Rails.application.routes.draw do
  resources :games
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  get 'profile', to: 'users#show'
  get 'contact', to: 'home#contact'
  get 'games', to: 'games#index'
  get 'home/game', to: 'home#game'
  post 'request_contact', to: 'home#request_contact'
end
