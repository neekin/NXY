class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :place
      t.string :destination
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
