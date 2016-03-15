class CreateDeparts < ActiveRecord::Migration
  def change
    create_table :departs do |t|
      t.date :departureTime
      t.integer :line_id
      t.boolean :status
      t.integer :truck_id

      t.timestamps null: false
    end
  end
end
