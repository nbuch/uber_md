class ChangeAddressToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :patients, :address_id, 'integer USING CAST(address_id AS integer)'
  end
end
