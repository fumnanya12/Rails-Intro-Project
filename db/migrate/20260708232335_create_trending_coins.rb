class CreateTrendingCoins < ActiveRecord::Migration[8.1]
  def change
    create_table :trending_coins do |t|
      t.integer :trending_id
      t.string :uuid
      t.integer :trend_rank

      t.timestamps
    end
  end
end
