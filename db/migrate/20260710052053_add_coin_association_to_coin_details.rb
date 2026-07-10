class AddCoinAssociationToCoinDetails < ActiveRecord::Migration[8.1]
  def change
    change_column_null :coins, :uuid, false
    add_index :coins, :uuid, unique: true unless index_exists?(:coins, :uuid)

    change_column_null :coin_details, :coin_uuid, false
    add_index :coin_details, :coin_uuid, unique: true unless index_exists?(:coin_details, :coin_uuid)

    add_foreign_key :coin_details,
                    :coins,
                    column: :coin_uuid,
                    primary_key: :uuid
  end
end