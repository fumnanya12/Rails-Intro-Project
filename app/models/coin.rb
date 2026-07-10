class Coin < ApplicationRecord
  has_one :coin_detail
  validates :uuid, presence: true, uniqueness: true
end
