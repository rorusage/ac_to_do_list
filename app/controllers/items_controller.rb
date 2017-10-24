class ItemsController < ApplicationController
  before_action :find_item, :only => [:edit, :update, :show, :destroy]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :due_date, :note)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
