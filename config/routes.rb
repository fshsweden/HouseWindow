Rails.application.routes.draw do
  
  resources :bookings
  resources :presentations
  resources :pictures

  get '/presentations/:page/all_photos', :to => 'presentations#view_all_photos'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks',
    omniauth: 'users/omniauths'
  }

  root to: "home#index"
  
end
