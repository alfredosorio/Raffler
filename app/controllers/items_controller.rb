class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    @items = if params[:query]
      Item.where("name LIKE ?", "%#{params[:query]}%")
    else
      Item.all
    end
  end

  def show
    @bidder = current_user
    @stripe_price = @item.price * 100
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.seller_id = current_user.seller.id

    # trigger delayed job to begin delayed task(s)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def create_bid
    @item = params[:item]
    @bidder = current_user
    @new_bid = Bid.create(user_id: @bidder.id, item_id: @item)
    redirect_to item_path(@item), notice: 'Bid was successfully created.'
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :query, :price, :bid_id, :item_image)
    end
end
