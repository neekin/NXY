class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name   #出发地点名字
      t.integer :company_id #公司名字

      t.timestamps null: false
    end
  end
end
