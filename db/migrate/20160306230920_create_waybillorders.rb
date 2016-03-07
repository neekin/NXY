class CreateWaybillorders < ActiveRecord::Migration
  def change
    create_table :waybillorders do |t|
      t.string :ordernum   #货单号
      t.string :goodsname  #货物名称
      t.integer :number    #货物数量
      t.float :weight      #货物重量
      t.float :volume      #货物体积
      t.integer :freightCost #运费
      t.integer :goodsPrice  #货物价钱
      t.integer :insuranceCost #保险费
      t.integer :packingCost #打包费
      t.integer :deliverCost #送货费
      t.integer :acceptCost  #接货费
      t.boolean :isTransfer  #是否中转
      t.integer :transferCost #中转费
      t.integer :total   #总价
      t.integer :place_id  #出发地
      t.integer :destination_id  #目的地
      t.integer :consignor_id  # 发货人
      t.integer :consignee_id  # 收货人
      t.integer :proxycollection  #代收货款
      t.integer :truck_id  # 车辆ID
      t.integer :company_id  #公司ID
      t.integer :user_id   #开票人 用户ID
      t.integer :paymentmethod_id  #付款方式

      t.timestamps null: false
    end
  end
end
