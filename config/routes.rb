Rails.application.routes.draw do
  get 'circular_prime/index'
  get 'circular_prime/new'
  root to: 'circular_prime#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
