class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 500


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud',
      :receipt_email => "rafflernotifications@gmail.com",
    )

    # I need to pass through the current @item.id variable in here
    @item = params[:item]
    @bidder = current_user
    @new_bid = Bid.create(user_id: @bidder.id, item_id: @item)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to items_path
  end

end
