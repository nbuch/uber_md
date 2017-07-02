class AddAddressIdToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :address_id, :integer
  end
end
