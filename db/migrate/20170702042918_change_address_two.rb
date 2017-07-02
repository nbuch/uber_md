class ChangeAddressTwo < ActiveRecord::Migration[5.0]
  def change
    rename_column :patients, :address, :address_id
  end
end
