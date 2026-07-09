class CreateCoinDetails < ActiveRecord::Migration[8.1]
  def change
    create_table :coin_details do |t|
      t.string :uuid
      t.string :description
      t.string :website_url
      t.integer :no_market
      t.integer :no_exchange
      t.decimal :change

      t.timestamps
    end
  end
end
