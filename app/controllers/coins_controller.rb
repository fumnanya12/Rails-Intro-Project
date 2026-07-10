class CoinsController < ApplicationController
  def index
        @coins = []

   if params[:query].present?
      search = "%#{params[:query]}%"

      @coins = Coin.where(
        "name LIKE :search OR symbol LIKE :search",
        search: search
      ).order(:rank)

    end
  end
   def allCoins
    @coins=Coin.all

   end
  def about
    
  end
end
