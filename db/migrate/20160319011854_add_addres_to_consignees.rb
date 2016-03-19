class AddAddresToConsignees < ActiveRecord::Migration
  def change
    add_column :consignees, :addres, :string
  end
end
