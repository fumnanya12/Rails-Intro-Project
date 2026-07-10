class Coin < ApplicationRecord
 self.primary_key = "uuid"

  has_one :coin_detail,
          foreign_key: "coin_uuid",
          primary_key: "uuid"
  validates :uuid, presence: true, uniqueness: true
end
