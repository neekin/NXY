class CreateConsignees < ActiveRecord::Migration
  def change
    create_table :consignees do |t|
      t.string :name
      t.string :phone
      t.integer :company_id
      t.float :weight
      t.float :volume
      t.string :address

      t.timestamps null: false
    end
  end
end
