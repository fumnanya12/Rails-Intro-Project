class RenameUuidToCoinUuidInCoinDetails < ActiveRecord::Migration[8.1]
  def change
    rename_column :coin_details, :uuid, :coin_uuid
  end
end