Rails.application.routes.draw do

  devise_for :users, controllers: {
    session: 'auth/login',
    registrations: 'auth/sign_up'
  }

  resources :post
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
