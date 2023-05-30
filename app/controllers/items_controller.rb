class ItemsController < ApplicationController
  def index
    @items = Item.all.order(created_at: :desc)
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end

  def edit
    @items = Item.find(params[:id])
  end

  def create
    @items = Item.new(item_params)
    @items.save
    redirect_to @items
  end

  def update
    @items = Item.find(params[:id])
    @items.update(item_params)
    @items.save
    redirect_to @items
  end

  def destroy
    @items = Item.find(params[:id])
    @items.destroy
  end

  def item_params
    params.require(:item).permit(:name, :detail, :price, :user_id,images:[])
  end
end
