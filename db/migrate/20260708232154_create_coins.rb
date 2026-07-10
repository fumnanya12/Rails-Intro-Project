class CreateCoins < ActiveRecord::Migration[8.1]
  def change
    create_table :coins, id: false do |t|
      t.string :uuid, null: false, primary_key: true
      t.string :name
      t.string :symbol
      t.integer :rank
      t.decimal :price
      t.decimal :market_cap
      t.decimal :volume_24h
      t.decimal :change_24
      t.string :icon_url
      t.integer :tier
      t.string :color

      t.timestamps
    end
  end
end
