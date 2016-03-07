class CreateDeparts < ActiveRecord::Migration
  def change
    create_table :departs do |t|
      t.date :departureTime   #出发时间
      t.integer :destination_id  #目的地
      t.integer :place_id    #出发地
      t.boolean :status  #是否出发
      t.integer :truck_id   #车辆信息

      t.timestamps null: false
    end
  end
end
