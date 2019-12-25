Rails.application.routes.draw do
  get '/', to:'sessions#new', as: 'new_session'
  resources :sessions, only: [:index,:new, :create]
  get '/sessions/logout', in: 'sessions#logout', as: 'logout_session'
  resources :home_pages, only: [:index]
  resources :bookings
  resources :guests
  resources :hotels, only: [:index, :show]
  resources :rooms, only: [:index, :show]
  resources :reviews
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
