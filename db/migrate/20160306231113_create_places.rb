class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
