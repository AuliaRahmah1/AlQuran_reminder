AlQuranReminder::Application.routes.draw do
  devise_for :users
  
  root to: 'home#index'
  
  resources :home
  resources :users
  resources :surats
  resources :ayats
  resources :reading_histories
  resources :reminders
  resources :mains
  
end
