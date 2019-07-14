Rails.application.routes.draw do
  resources :circular_prime
  root to: 'circular_prime#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
