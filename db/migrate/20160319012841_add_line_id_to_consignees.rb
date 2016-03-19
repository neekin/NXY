class AddLineIdToConsignees < ActiveRecord::Migration
  def change
    add_column :consignees, :line_id, :integer
  end
end
