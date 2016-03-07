class CreateConsignors < ActiveRecord::Migration
  def change
    create_table :consignors do |t|
      t.string :name  #发货人姓名
      t.string :phone  #联系方式
      t.integer :company_id #公司名字

      t.timestamps null: false
    end
  end
end
