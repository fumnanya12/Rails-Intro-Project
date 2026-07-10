class TrendingCoin < ApplicationRecord
      validates :uuid, presence: true, uniqueness: true
end
