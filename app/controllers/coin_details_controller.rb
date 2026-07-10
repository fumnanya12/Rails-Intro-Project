class CoinDetailsController < ApplicationController
  def show
    @coin_detail = CoinDetail.find_by!(coin_uuid: params[:coin_uuid])
    @coin = @coin_detail.coin
  end
end
