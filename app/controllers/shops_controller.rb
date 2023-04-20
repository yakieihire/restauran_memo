class ShopsController < ApplicationController
  def index
    # @shops = Shops.all
  end

  def new
    @shop = Shop.new
  end

  def delete
  end

  private
  def shop_params
    params.require(:shops).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

end
