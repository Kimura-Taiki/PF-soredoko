class ItemsController < ApplicationController
  def index
    # @items = Item.all
    @items = Item.where(user: current_user) #当座
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def item_params
    params.require(:item).permit(:name, :user_id, :position, :image, :introduction)
  end
end
