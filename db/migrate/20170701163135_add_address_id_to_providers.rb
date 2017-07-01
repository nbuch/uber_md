class AddAddressIdToProviders < ActiveRecord::Migration[5.0]
  def change
    add_column :providers, :address_id, :integer
  end
end
