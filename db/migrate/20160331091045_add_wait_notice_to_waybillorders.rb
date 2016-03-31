class AddWaitNoticeToWaybillorders < ActiveRecord::Migration
  def change
    add_column :waybillorders, :waitnotice, :boolean
  end
end
