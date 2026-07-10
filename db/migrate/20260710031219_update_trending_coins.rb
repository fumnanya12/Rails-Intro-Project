class UpdateTrendingCoins < ActiveRecord::Migration[8.1]
  def change
    remove_column :trending_coins, :trending_id, :integer
    remove_column :trending_coins, :trend_rank, :integer

    add_column :trending_coins, :name, :string
    add_column :trending_coins, :symbol, :string
    add_column :trending_coins, :rank, :integer
    add_column :trending_coins, :price, :decimal
    add_column :trending_coins, :market_cap, :decimal
    add_column :trending_coins, :volume_24h, :decimal
    add_column :trending_coins, :change_24h, :decimal
    add_column :trending_coins, :icon_url, :string
    add_column :trending_coins, :tier, :integer
    add_column :trending_coins, :color, :string

    add_index :trending_coins, :uuid, unique: true
  end
end
