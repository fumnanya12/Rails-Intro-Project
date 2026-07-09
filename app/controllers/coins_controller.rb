class CoinsController < ApplicationController
  def index
    @coins=Coin.all
  end

  def about
    
  end
end
