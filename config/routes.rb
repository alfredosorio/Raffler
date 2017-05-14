Rails.application.routes.draw do
  resources :sellers
  resources :profiles
  resources :bids
  resources :items
  devise_for :users, controllers: { registrations: "registrations" }

  # Stripe
  resources :charges

  # Static Pages
  root "pages#welcome", page: "welcome"
  get "pages/about"

  # ActionMailer Test Links
  get :send_winner_email, to: 'bids#send_winner_email', as: :send_winner_email
  get :send_seller_email, to: 'bids#send_seller_email', as: :send_seller_email
end
