class CreateConsignees < ActiveRecord::Migration
  def change
    create_table :consignees do |t|
      t.string :name
      t.sting :phone
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
