AlQuranReminder::Application.routes.draw do
  get "search/index"

  get "about/show"

  devise_for :users
  
  root to: 'home#index'
  
  resources :home
  resources :users
  resources :surats do
  	member do
  		get :ayats
  	end
  end
  resources :ayats
  resources :reading_histories
  resources :reminders do
      collection do
        get :check
      end
  end    

  resources :mains
  resources :about
  

end
