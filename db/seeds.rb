# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
require "net/http"
require "json"
Coin.destroy_all

def fetch_coins(limit, offset)
  url = URI("https://api.coinranking.com/v2/coins?limit=#{limit}&offset=#{offset}")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["x-access-token"] = ENV["COINRANKING_API_KEY"]

  response = http.request(request)
  JSON.parse(response.body)
end

[0, 100].each do |offset|
  data = fetch_coins(100, offset)

  data["data"]["coins"].each do |coin|
    Coin.create!(
      uuid: coin["uuid"],
      name: coin["name"],
      symbol: coin["symbol"],
      rank: coin["rank"],
      price: coin["price"],
      market_cap: coin["marketCap"],
      volume_24h: coin["24hVolume"],
      change_24: coin["change"],
      icon_url: coin["iconUrl"],
      tier: coin["tier"],
      color: coin["color"]
    )
  end
end

puts "#{Coin.count} coins imported."

##trending coins
TrendingCoin.destroy_all

def fetch_trendingcoins(limit, offset)
  url = URI("https://api.coinranking.com/v2/coins/trending?limit=#{limit}&offset=#{offset}")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["x-access-token"] = ENV["COINRANKING_API_KEY"]

  response = http.request(request)
  JSON.parse(response.body)
end

[0, 100].each do |offset|
  data = fetch_trendingcoins(100, offset)

  data["data"]["coins"].each do |trendingcoin|
    TrendingCoin.create!(
      uuid: trendingcoin["uuid"],
      name: trendingcoin["name"],
      symbol: trendingcoin["symbol"],
      rank: trendingcoin["rank"],
      price: trendingcoin["price"],
      market_cap: trendingcoin["marketCap"],
      volume_24h: trendingcoin["24hVolume"],
      change_24h: trendingcoin["change"],
      icon_url: trendingcoin["iconUrl"],
      tier: trendingcoin["tier"],
      color: trendingcoin["color"]
    )
  end
end

puts "#{TrendingCoin.count} coins imported."