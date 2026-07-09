class Coin < ApplicationRecord
  has_one :coin_detail
  has_many :trending_coins

  validates :uuid, presence: true, uniqueness: true
end
