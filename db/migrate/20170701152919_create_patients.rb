class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :mpi
      t.date :dob
      t.string :gender
      t.timestamps
    end
  end
end
