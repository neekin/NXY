class CreateConsignors < ActiveRecord::Migration
  def change
    create_table :consignors do |t|
      t.string :name
      t.string :phone
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
