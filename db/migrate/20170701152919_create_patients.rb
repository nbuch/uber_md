class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :mpi
      t.date :dob
      t.references :gender, foreign_key: true
      t.timestamps
    end
  end
end
