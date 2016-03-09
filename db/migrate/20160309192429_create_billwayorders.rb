class CreateBillwayorders < ActiveRecord::Migration
  def change
    create_table :billwayorders do |t|
      t.string :orderNum
      t.string :goodsName
      t.integer :number
      t.float :weight
      t.float :volume
      t.integer :freightCost
      t.integer :goodsPrice
      t.integer :insuranceCost
      t.integer :packingCost
      t.integer :deliverCost
      t.integer :acceptCost
      t.boolean :isTransfer
      t.integer :transferCost
      t.integer :total
      t.integer :consignor_id
      t.integer :consignee_id
      t.integer :proxycollection
      t.integer :truck_id
      t.integer :company_id
      t.integer :user_id
      t.integer :paymentmethod_id
      t.integer :line_id

      t.timestamps null: false
    end
  end
end
