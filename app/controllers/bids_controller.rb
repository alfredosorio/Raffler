class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  before_action :set_bids, only: [:index, :show]

  # GET /bids
  # GET /bids.json
  def index
    @bids = Bid.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @bidders = @bids.select{ |x| x.item_id == @bid.item_id }.map{ |x| x.user }
    @draw_total = @bidders.count * @bid.item.price
    @item = @bid.item

    # shuffle bidders (7) times and pick first from the array
    7.times { @shuffled = @bidders.shuffle }
    @winner = @shuffled.first

    # To TOGGLE: comment line below, uncomment @winner = params[:winner], uncomment #(winner)
    # send_winner_email(@item, @winner)
    # send_seller_email(@item, @winner, @draw_total)
  end

  def send_winner_email#(item, winner)
    @winner = Bid.find(params[:winner])
    @item = Item.find(params[:item])
    UserMailer.send_winner_email(@item, @winner).deliver
    redirect_to bids_path, notice: "Email has been sent to: #{@winner.user.email}"
  end

  def send_seller_email#(item, winner, draw_total)
    @item = Item.find(params[:item])
    @winner = Bid.find(params[:winner])
    @draw_total = params[:draw_total]
    UserMailer.send_seller_email(@item, @winner, @draw_total).deliver
    redirect_to bids_path, notice: "Emails have been sent to: #{@winner.user.email} and #{@item.seller.user.email}"
  end

  # GET /bids/new
  def new
    @bid = Bid.new
  end

  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  # POST /bids.json
  def create
    @bid = Bid.new(bid_params)

    respond_to do |format|
      if @bid.save
        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    def set_bids
      @bids = Bid.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:user_id, :item_id, :query)
    end
end
