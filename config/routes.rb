Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :pets do
    resources :bookings, only: [:show, :new, :create, :edit, :update] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :bookings, only: :destroy
  get 'my_pets', to: 'pets#my_pets'
  get 'my_bookings', to: 'bookings#my_bookings'
end
