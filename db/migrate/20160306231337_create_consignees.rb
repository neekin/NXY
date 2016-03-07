class CreateConsignees < ActiveRecord::Migration
  def change
    create_table :consignees do |t|
      t.string :name  #收货人名字
      t.sting :phone  #联系方式
      t.integer :company_id  #公司信息

      t.timestamps null: false
    end
  end
end
