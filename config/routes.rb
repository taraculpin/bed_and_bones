Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#home'
  resources :pets do
    resources :bookings, except: :destroy
  end
  resources :bookings, only: :destroy
  get 'my_pets', to: 'pets#my_pets'
  get 'my_bookings', to: 'bookings#my_bookings'
end
