class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :place_id
      t.integer :destination_id
      t.string :company_id

      t.timestamps null: false
    end
  end
end
