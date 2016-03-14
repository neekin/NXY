class CreateWaybillorders < ActiveRecord::Migration
  def change
    create_table :waybillorders do |t|
      t.string :orderNum
      t.string :googsName1
      t.string :googdName2
      t.string :goodsName3
      t.integer :number1
      t.integer :number2
      t.integer :number3
      t.float :weight1
      t.float :weight2
      t.float :weight3
      t.float :volume1
      t.float :volume2
      t.float :volume3
      t.integer :freightCost
      t.integer :insuranceCost
      t.integer :packingCost
      t.integer :deliverCost
      t.integer :acceptCost
      t.boolean :isTransfer
      t.integer :transferCost
      t.string :transferDestintion
      t.integer :otherCost
      t.integer :total
      t.integer :consignor_id
      t.integer :consignee_id
      t.integer :proxycollection
      t.integer :truck_id
      t.integer :company_id
      t.integer :user_id
      t.integer :paymentmenthod_id
      t.integer :line_id

      t.timestamps null: false
    end
  end
end
