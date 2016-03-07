class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name  #目的地名字
      t.integer :company_id  #公司信息

      t.timestamps null: false
    end
  end
end
