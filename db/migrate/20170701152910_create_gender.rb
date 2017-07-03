class CreateGender < ActiveRecord::Migration[5.0]
  def change
    create_table :genders do |t|
      t.string :sex
    end
  end
end
