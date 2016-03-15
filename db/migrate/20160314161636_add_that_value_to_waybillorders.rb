class AddThatValueToWaybillorders < ActiveRecord::Migration
  def change
    add_column :waybillorders, :ThatValue, :integer
  end
end
