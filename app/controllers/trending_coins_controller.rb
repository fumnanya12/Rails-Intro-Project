class TrendingCoinsController < ApplicationController
  def index
    @trendingcoins=TrendingCoin.all 
  end
end
