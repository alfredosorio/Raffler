Rails.application.routes.draw do
  resources :bids
  resources :items
  devise_for :users

  resources :winners, only: [:index, :show]

  # Stripe
  resources :charges

  # ActionMailer
  get :send_winner_email, to: 'winners#send_winner_email', as: :send_winner_email
  get :send_seller_notification, to: 'winners#send_seller_notification', as: :send_seller_notification
end
