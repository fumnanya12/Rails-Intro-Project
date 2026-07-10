class RemoveTrendingIdFromTrendingCoins < ActiveRecord::Migration[8.1]
  def change
    remove_column :trending_coins, :trending_id, :integer
  end
end
