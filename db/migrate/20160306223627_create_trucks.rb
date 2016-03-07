class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :driver  #司机名字
      t.string :phone  #联系方式
      t.string :licensePlateNumber  #车牌号码
      t.integer :company_id   #公司名称

      t.timestamps null: false
    end
  end
end
