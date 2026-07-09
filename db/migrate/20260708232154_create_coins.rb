class CreateCoins < ActiveRecord::Migration[8.1]
  def change
    create_table :coins do |t|
      t.string :uuid
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
