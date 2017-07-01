class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.references :provider, foreign_key: true
      t.references :patient, foreign_key: true
      t.references :address, foreign_key: true
      t.datetime :date
      t.integer :duration
      t.text :reason
      t.timestamps
    end
  end
end
