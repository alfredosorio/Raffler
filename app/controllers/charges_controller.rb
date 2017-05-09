class ChargesController < ApplicationController
after_action :create_bid, only: [:create]

  def new
  end

  def create
    # Amount in cents
    @item = Item.find(params[:item])
    @amount = @item.price * 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @item.name,
      :currency    => "AUD",
      :receipt_email => "rafflernotifications@gmail.com",
    )

    create_bid
    send_bid_receipt(@amount)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to items_path
  end

  def send_bid_receipt(amount)
    @bid_email = current_user
    UserMailer.send_bid_receipt(@bid_email, @amount).deliver
    flash[:notice] = "Email has been successfully sent to: #{@bid_email}"
    redirect_to items_path
  end

  private

  def create_bid
    @item = Item.find(params[:item])
    @bidder = current_user.id
    @new_bid = Bid.create(user_id: @bidder, item: @item)
  end

end
