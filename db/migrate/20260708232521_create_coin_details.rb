class CreateCoinDetails < ActiveRecord::Migration[8.1]
  def change
    create_table :coin_details do |t|
      t.string :coin_uuid, null: false
      t.string :description
      t.string :website_url
      t.integer :no_market
      t.integer :no_exchange
      t.decimal :change

      t.timestamps
    end
    add_index :coin_details, :coin_uuid, unique: true

    add_foreign_key :coin_details,
                    :coins,
                    column: :coin_uuid,
                    primary_key: :uuid
  end
end
