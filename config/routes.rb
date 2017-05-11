Rails.application.routes.draw do
  resources :sellers
  resources :profiles
  resources :bids
  resources :items
  devise_for :users

  # Stripe
  resources :charges

  # Test Create Bid
  get :create_bid, to: 'items#create_bid', as: :create_bid

  # ActionMailer Test Links
  get :send_winner_email, to: 'bids#send_winner_email', as: :send_winner_email
  get :send_seller_email, to: 'bids#send_seller_email', as: :send_seller_email
end
