class AddLineIdToConsignors < ActiveRecord::Migration
  def change
    add_column :consignors, :line_id, :integer
  end
end
