class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :driver
      t.string :phone
      t.string :licensePlateNumber
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
