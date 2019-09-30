Rails.application.routes.draw do
  
 resources :bookings
  resources :guests
  resources :hotels, only: [:index, :show]
  resources :rooms, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
