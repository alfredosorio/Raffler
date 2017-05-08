class WinnersController < ApplicationController
before_action :set_current_bid, only: [:index, :show]
before_action :set_all_bids

  def index
  end

  def show
    @bidders = @bids.select{ |x| x.item_id == @bid.item_id }.map{ |x| x.user.email }
  end

  def send_winner_email
    # this needs to be sent to the winner. Set User.first for testing
    @user = User.first
    UserMailer.send_winner_email(@user).deliver
    flash[:notice] = "Email has been successfully sent to: #{@user.email}"
    redirect_to bids_path
  end

  def send_seller_notification
    # this needs to be sent to the seller. Set User.first for testing
    @user = User.first
    UserMailer.send_seller_notification(@user).deliver
    flash[:notice] = "Notification email has been successfully sent to: #{@user.email}"
    redirect_to bids_path
  end

    private

    def set_current_bid
      @bid = Bid.find(params[:id])
    end

    def set_all_bids
      @bids = Bid.all
    end
end
