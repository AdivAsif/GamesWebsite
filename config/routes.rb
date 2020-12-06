Rails.application.routes.draw do
  resources :games
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  get 'users/:id' => 'users#show'
  get 'profile', to: 'users#show'
end
