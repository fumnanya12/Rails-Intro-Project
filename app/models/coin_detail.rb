class CoinDetail < ApplicationRecord
     belongs_to :coin,
             foreign_key: "coin_uuid",
             primary_key: "uuid"

end
