Rails.application.routes.draw do

  resources :albums do
    resources :photos
  end
  devise_for :users
  root 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
