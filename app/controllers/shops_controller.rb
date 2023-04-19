class ShopsController < ApplicationController
  def index
    @shops = Shops.all
  end

  def new
    @shops = Shops.find(params)
  end

  def delete
  end

  private
  def tweet_params
    params.require(:shops).permit(:name, :image, :text)
  end

end
