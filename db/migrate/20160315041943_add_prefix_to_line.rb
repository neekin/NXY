class AddPrefixToLine < ActiveRecord::Migration
  def change
    add_column :lines, :prefix, :string
  end
end
