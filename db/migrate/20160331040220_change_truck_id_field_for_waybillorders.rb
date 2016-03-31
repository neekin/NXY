class ChangeTruckIdFieldForWaybillorders < ActiveRecord::Migration
  def change
    rename_column :waybillorders, :truck_id, :depart_id
    rename_column :waybillorders,:paymentmenthod_id ,:paymentmethod_id
  end
end
