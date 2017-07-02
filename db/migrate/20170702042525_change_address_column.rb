class ChangeAddressColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :patients, :address, :address_id
    change_column :patients, :address_id, :integer
  end
end
