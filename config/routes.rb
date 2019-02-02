Rails.application.routes.draw do
  devise_for :users
  resources :bulletins
  resources :pictures
  resources :shouts
  resources :posts
  resources :entries
  resources :submissions
    root to: 'entries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
